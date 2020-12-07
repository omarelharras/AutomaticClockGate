# AutomaticClockGate
# Digital Design Project 2:

Team Members:
Omar El Harras
Donia Abdelaziz
Hoda Ahmed

Our approach:
We have a list of the type of flip flops and the type of MUXs in the SKY130A pdk. We get the file name from the user then we loop over all the items with the type instance list looking for any flip flops, and we create a list of the names of the wires that enter the D port of the flip flop. Then we loop over the instance list again and look for any multiplexers whose output goes to the flip flops and we add them to a list. Then we loop over the instance list again, and we create a new instances list that has all the elements of the original instance list except the multiplexers that are connected to the flip flops. After that we will create a clock gating cell instance for each flip flop and connect the enable of the flip flop to the clock gating cell.

How to use the script:
Open a terminal where the script and the gate level netlist files and type in python3 Main.py Test1.gl.v (assuming gate level file is called Test1).




Progress so far:
The code we have written will work if we there is only 1 register and for the sky 130 fd sc hd pdk.

How to evaluate power usage reduction:
