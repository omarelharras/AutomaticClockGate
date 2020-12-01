import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator

FlipFlopList = [sky130_fd_sc_hd__dfrtn, sky130_fd_sc_hd__dfrbp, sky130_fd_sc_hd__dfrtp,sky130_fd_sc_hd__dfxtp]
MuxList = [sky130_fd_sc_hd__mux2, sky130_fd_sc_hd__mux2i, sky130_fd_sc_hd__mux4]
NewItemList = []
WireList = []
MuxInstanceList = []

statements = []

rtl = sys.argv[1] # get gate level netlist file name from user
ast, _ = parse([rtl])

Instances = []

# loop over all items with type InstanceList, look for flip flop cells and get the wire names that comes from the multiplexer
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList": 
        if instance.module in FlipFlopList:
            for hook in instance.portlist:
                if hook.portname == "D":
                    WireList.append(hook.argname)


# loop over all items with type InstanceList, look for multiplexor cells whose output wire go into flip flop
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
    if instance.module in MuxList:
            for hook in instance.portlist:
                if hook.argname in WireList:
                    MuxInstanceList.append(instance.name)

# loop over all items with type InstanceList, only add cells that aren't multiplexors connected to flip flops       
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        if instance.module not in MuxInstanceList:
            NewItemList.append(instance)





clock_gate_args = 
[
    vast.PortArg("EN", vast.Identifier("__clock_gate_enable_")),
    vast.PortArg("INV_CLK", vast.Identifier("__clock_gate_input_a_")),
    vast.PortArg("Y", vast.Identifier("__clock_gate_output_c_"))
]

clock_gate_cell = vast.Instance
(
    "sky130_fd_sc_hd__dlclkp",
    "__clock_gate_cell__",
    tuple(clock_gate_args),
    tuple()
)

instances.append(vast.InstanceList("sky130_fd_sc_hd__dlclkp", tuple(), tuple([clock_gate_cell])))

for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList": 
        if instance.module in FlipFlopList:
            if hook.portname == "En":
                hook.argname = "__clock_gate_output_c_"
