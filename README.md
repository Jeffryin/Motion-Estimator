# Motion-Estimator
ASIC implementation of a motion estimator

<img width="637" height="633" alt="Screenshot 2025-11-08 at 1 22 54 PM" src="https://github.com/user-attachments/assets/1af897f4-7912-46bf-afc0-444fa741a655" />


## Design Specifications
The design is expected to meet the speed of 15 frames per second. The picture is gray-scale coded ( 8 bits per block). The reference block is 16 x 16 pixels and the search window is 31 x 31 pixels. There are 4096 reference blocks in a frame. 
The design is to minimize the total area and energy consumed by the logic over the entire simulation of the test set. The design must operate at the speed given above. 


## Verification Plan
Several test benches in Verilog will be developed with known vectors as well as random stimulus. These test benches will be applied to the design and the results will be compared against expected outcomes. The expected outcomes will be produced using a reference model or manually and compared against the outcomes produced by the design under test. 


## Design Plan
After verification of the RTL code, the design is taken to the ASIC flow starting with front-end synthesis and timing check, followed by back-end physical design involving placement, clock-tree synthesis, and routing. The parasitics will be extracted from layout for final timing check using prime-time. Efforts will be made to improve the design in terms of power consumption and area, while meeting the timing.

## General Flow of the design process 

<img width="666" height="481" alt="Screenshot 2025-11-12 at 4 16 01 PM" src="https://github.com/user-attachments/assets/a48625c6-11b3-4ea7-94c5-b2fe570c8cb2" />

#### This photo was from the PrimeTime User Guide which covers most of the process 

## References

## Language Used 
- Verilog
- tcl

## Tools Used
- Synopsys
- Verdi
- Synopsys Design Compiler
- PrimeTime
- ICCompiler II (Physical Design)

## Things Learned in the Process
### RTL Design and Verification

### Synthesis and Timing (Synopsys Design Compiler) 

### Physical Design (IC Compiler II)

### Static Timing Analysis (Primetime) 

### Design Methodology and Engineering Practices 

### Motion Estimation Algorithm Inisights 

### Side Note:
This project is for the Advanced Digital Design class taken in San Francisco State University, and most directories are from the school server. Whatever is posted in this repository is work that I've accomplished by myself and with the help of other classmates if applicable. 

