import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator

# loop over all items with type InstanceList, look for flip flop cells
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList": 
        if instance.module == sky130_fd_sc_hd__dfrtn or instance.module == sky130_fd_sc_hd__dfrbp or instance.module == sky130_fd_sc_hd__dfrtp
        

statements = []

rtl = "spm.v"
ast, _ = parse([rtl])


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