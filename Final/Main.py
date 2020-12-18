import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
import sys

NewItemList = [] #list of items in new gate level netlist
WireList = [] #list of wires that connect MUXs to flip flops
MuxInstanceList = [] #list of MUX instances to remove
BaseFlipFlopList = [] #List of PDK flip flop cells wihtout sizes
BaseMUXList = [] #List of PDK mux cells without sizes
PDKFlipFlopList=[] #flip flop cells in PDK including different sizes
PDKMUXList = [] #mux cells in PDK including different sizes
PDKClockGateCell = 0 #clock gating cell for PDK
FlipFlopIn = [] #List of inputs for flip flop
FlipFlopOut = [] #List of outputs for flip flop
MUXEnable = [] #List of enables for MUX with duplicates
ClockGateEnable = [] #List of enables for MUX without duplicates
CLK = 0 #Circuit clock

rtl = sys.argv[1] + ".gl.v" # get gate level netlist file name from user
ast, _ = parse([rtl])
# get the root node of the tree (Description)
desc = ast.description
# get the ModuleDef node
definition = desc.definitions[0]

input_string=input("Please enter the flip flop cell names for your pdk without their sizes and seperated by spaces: \n") 
BaseFlipFlopList= input_string.split()  #Get names of flip flop cells from user
MaxSizeFlipFlop = input("Please enter the max size of the flip flop cells in your pdk: \n") #Get max size of flip flop cells

input_string=input("Please enter the MUX cell names for your pdk without their sizes and seperated by spaces: \n")
BaseMUXList= input_string.split() #Get names of mux cells from user
MaxSizeMux = input("Please enter the max size of the MUX cells in your pdk: \n") #Get max size of MUX cells

PDKClockGateCell=input("Please enter the clock gate cell name for your pdk: \n") #Get name of clock gate cell

#generate flip flop list of different sizes
for item in BaseFlipFlopList:
    for i in range(int(MaxSizeFlipFlop)):
        PDKFlipFlopList.append(item + "_" + str(i+1))
    

#generate mux list of different sizes
for item in BaseMUXList:
    for i in range(int(MaxSizeMux)):
        PDKMUXList.append(item + "_" + str(i+1))

# loop over all items with type InstanceList
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0]
        if instance.module in PDKFlipFlopList: #Look for flip flop cells
            for hook in instance.portlist:
                if hook.portname == "D" and hook.argname not in WireList:
                    WireList.append(hook.argname) #Add the flip flop input that comes from MUX to wirelist
                if hook.portname == "CLK":
                    CLK = hook.argname #Get clock name

# loop over all items with type InstanceList
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0]
        if instance.module in PDKMUXList: #look for MUX cells
            for hook in instance.portlist:
                if hook.portname == "A0":
                    TempIn0 = hook.argname #store input 1 name from MUX
                if hook.portname == "A1":
                    TempIn1 = hook.argname #store input 2 name from MUX
                if hook.portname == "S":
                    TempEnable = hook.argname #store enable from MUX
                if hook.portname == "X" and hook.argname in WireList: #if this MUX is connected to flip flop
                    FlipFlopIn.append(TempIn1) #Add mux input 2 to flip flop in list
                    FlipFlopOut.append(TempIn0) #Add mux input 1 to flip flop out list
                    MUXEnable.append(TempEnable) #Add mux ebable to list
                    MuxInstanceList.append(instance.name) #Add instnace name to MUXInstanceList
                    if TempEnable not in ClockGateEnable: #If MUX enable is not in clock gate enable list
                        ClockGateEnable.append(TempEnable) #add MUX enable to clock gate enable lsit

# loop over all items with type InstanceList     
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0]
        if instance.name not in MuxInstanceList:
            NewItemList.append(itemDeclaration) #if instance not MUX connected to flip flop then add to new item list
    else:
        NewItemList.append(itemDeclaration) #if instance not MUX connected to flip flop then add to new item list

i = 0
# loop over all items with type InstanceList
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0]
        if instance.module in PDKFlipFlopList and len(ClockGateEnable) > 0: #look for flip flops
            for hook in instance.portlist:
                if hook.portname == "CLK":
                    index = ClockGateEnable.index(MUXEnable[i]) #make the clock input from clock gate cell output
                    hook.argname = vast.Identifier("ClockGateOut" + str(index))
                if hook.portname == "D":
                    hook.argname = FlipFlopIn[i] #change the flip flop input
                if hook.portname == "Q":
                    hook.argname = FlipFlopOut[i] #change the flip flop output
            i = i + 1

NumberOfClockGateCells = len(ClockGateEnable)
if NumberOfClockGateCells > 0:
    for i in range(NumberOfClockGateCells): #create new clock gate cells
        clock_gate_args = [
            vast.PortArg("EN", ClockGateEnable[i]), #get enable from clock gate enable list
            vast.PortArg("INV_CLK", CLK),
            vast.PortArg("Y", vast.Identifier("ClockGateOut" + str(i)))
        ]

        clock_gate_cell = vast.Instance(
            PDKClockGateCell,
            "__clock_gate_cell__" + str(i),
            tuple(clock_gate_args),
            tuple()
        )
        NewItemList.append(vast.Wire("ClockGateOut" + str(i), None, None, None))
        NewItemList.append(vast.InstanceList(PDKClockGateCell, tuple(), tuple([clock_gate_cell])))

#Add the instances list to the AST items
items = list(definition.items)
items = NewItemList

definition.items = tuple(items)

# write the ast to a .v file
codegen = ASTCodeGenerator()
rslt = codegen.visit(ast)

f = open(sys.argv[1] + "Out.gl.v", "w") 
f.write(rslt) #write to file
f.close()