# Digital Design Project 2:
# AutomaticClockGate

Team Members:
Omar El Harras - 900171100
Donia Abdelaziz - 900150232
Hoda Ahmed - 900150182

Our approach:
We get the names of the MUX cells, flip flop cells, and clock gating cell from the user of the pdk that the user wants to use. We get the file name from the user then we loop over all the items with the type instance list looking for any flip flops, and we create a list of the names of the wires that enter the D port of the flip flop. Then we loop over the instance list again and look for any multiplexers whose output goes to the flip flops and we add them to a list. Then we loop over the instance list again, and we create a new instances list that has all the elements of the original instance list except the multiplexers that are connected to the flip flops. After that we will create a clock gating cell instance for each flip flop and connect the enable of the flip flop to the clock gating cell.

How to use the script:
Open a terminal where the script and the gate level netlist files and type in python3 Main.py Test1.gl.v (assuming gate level file is called Test1). When prompted to please enter the names of the MUX cells, flip flop cells, and clock gating cell for your pdk.

Progress so far:
The code we have written will work if we there is only 1 register but it will work for any pdk.

How to evaluate power usage reduction:
