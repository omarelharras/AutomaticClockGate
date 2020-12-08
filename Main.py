import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
import sys

#BaseFlipFlopList = ["sky130_fd_sc_hd__dfrtn", "sky130_fd_sc_hd__dfrbp", "sky130_fd_sc_hd__dfrtp","sky130_fd_sc_hd__dfxtp"] #base flip flop types
#BaseMuxList = ["sky130_fd_sc_hd__mux2", "sky130_fd_sc_hd__mux2i", "sky130_fd_sc_hd__mux4"] #base mux types
NewItemList = [] #list of items in new gate level netlist
WireList = [] #list of wires that connect MUXs to flip flops
MuxInstanceList = [] #list of MUX instances to remove
FlipFlopList=[] #flip flop types including different sizes
MuxList=[] #mux types including different sizes
MuxIn = 0 #mux input (D)
CLK = 0 #flip flop clock
EN = 0 #mux enable

rtl = sys.argv[1] # get gate level netlist file name from user
ast, _ = parse([rtl])
# get the root node of the tree (Description)
desc = ast.description
# get the ModuleDef node
definition = desc.definitions[0]
TestList = []

input_string=input("Please enter the flip flop cell names for your pdk without their sizes and seperated by spaces: \n")
BaseFlipFlopList= input_string.split()   

input_string=input("Please enter the MUX cell names for your pdk without their sizes and seperated by spaces: \n")
BaseMuxList= input_string.split()

ClockGateCellName=input("Please enter the clock gate cell name for your pdk: \n")


#generate flip flop list of different sizes
for item in BaseFlipFlopList:
    FlipFlopList.append(item + "_1")
    FlipFlopList.append(item + "_2")
    FlipFlopList.append(item + "_4")
    FlipFlopList.append(item + "_8")

#generate mux list of different sizes
for item in BaseMuxList:
    MuxList.append(item + "_1")
    MuxList.append(item + "_2")
    MuxList.append(item + "_4")
    MuxList.append(item + "_8")

# loop over all items with type InstanceList, look for flip flop cells and get the wire names that comes from the multiplexer
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0] 
        if instance.module in FlipFlopList:
            for hook in instance.portlist:
                if hook.portname == "D":
                    WireList.append(hook.argname)


# loop over all items with type InstanceList, look for multiplexor cells whose output wire go into flip flop
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0]
        if instance.module in MuxList:
            for hook in instance.portlist:
                if hook.argname in WireList:
                    MuxInstanceList.append(instance.name)

# loop over all items with type InstanceList, look for the input wire to the MUX
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0]
        if instance.module in MuxList:
            for hook in instance.portlist:                    
                if hook.portname=="A1":
                    MuxIn = hook.argname

# loop over all items with type InstanceList, look for the MUX enable
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0]
        if instance.module in MuxList:
            for hook in instance.portlist:                   
                if hook.portname=="S":
                    EN = hook.argname

# loop over all items with type InstanceList, look for flip flop cells and change their input
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0] 
        if instance.module in FlipFlopList:
            for hook in instance.portlist:
                if hook.portname == "D":
                    hook.argname = MuxIn

# loop over all items with type InstanceList, look flip flop clock
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0] 
        if instance.module in FlipFlopList:
            for hook in instance.portlist:                    
                if hook.portname == "CLK":
                    CLK = hook.argname


# loop over all items with type InstanceList, only add cells that aren't multiplexors connected to flip flops       
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0]
        if instance.name not in MuxInstanceList:
            NewItemList.append(itemDeclaration)
    else:
        NewItemList.append(itemDeclaration)

# loop over all items with type InstanceList, look for flip flop cells and change their clock input to the clock gatting cell output
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0] 
        if instance.module in FlipFlopList:
            for hook in instance.portlist:
                if hook.portname == "CLK":
                    hook.argname = vast.Identifier("__clock_gate_output_c_")



clock_gate_args = [
    vast.PortArg("EN", EN),
    vast.PortArg("INV_CLK", CLK),
    vast.PortArg("Y", vast.Identifier("__clock_gate_output_c_"))
]

clock_gate_cell = vast.Instance(
    ClockGateCellName,
    "__clock_gate_cell__",
    tuple(clock_gate_args),
    tuple()
)

NewItemList.append(vast.Wire("__clock_gate_output_c_", None, None, None))
NewItemList.append(vast.InstanceList(ClockGateCellName, tuple(), tuple([clock_gate_cell])))



#Add the instances list to the AST items
items = list(definition.items)
items = NewItemList

definition.items = tuple(items)

# write the ast to a .v file
codegen = ASTCodeGenerator()
rslt = codegen.visit(ast)

f = open("Out.v", "w")
f.write(rslt)
f.close()
