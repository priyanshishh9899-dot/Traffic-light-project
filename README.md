# Traffic-light-project
# Overview
A Verilog HDL-based Traffic Light Controller designed using a Finite State Machine (FSM) and counter logic. 
The project implements sequential traffic signal control with defined timing intervals for Red, Yellow, and Green lights, along with simulation and verification using a testbench.

# Design
Design include:-FSM, Counter, clock
Finite State Machine (FSM)
Counter for timing control
Verilog HDL implementation
Testbench for simulation and verification
------------------------
language:-HDL
clock:-positive edge trigger clock pluse
no. of state:-3
 00-red
 01-green
 10-yellow
input:-clock,reset
output:-light
reset:-high
FSM type:-Moore FSM
Simulator: Icarus Verilog
Waveform : GTKWave 

# FSM diagram/state diagram
<img width="1408" height="768" alt="image" src="https://github.com/user-attachments/assets/93e26f49-6cec-4d41-9029-d1a4f1411872" />

# RTL design
state1: red 
state2: green
state3: yellow
At the initial positive edge of the clock, the FSM enters State 1 (RED). When the counter reaches 10, it resets to 0, and the FSM transitions to State 2 (GREEN).
Similarly, when the counter reaches 10 again, it resets to 0, and the FSM transitions to State 3 (YELLOW).

Finally, when the counter reaches 5, it resets to 0, and the FSM transitions back to State 1 (RED). This sequence repeats continuously.

# Simulation 
 The design is simulated using Icarus Verilog, and waveforms can be viewed using GTKWave.
 ----------------------------
 <img width="538" height="371" alt="image" src="https://github.com/user-attachments/assets/bd611fbe-b55a-49ba-a9d9-e055be59f705" />
