# Motion-Estimator
ASIC implementation of a motion estimator


## Design Specifications
The design is expected to meet the speed of 15 frames per second. The picture is gray-scale coded ( 8 bits per block). The reference block is 16 x 16 pixels and the search window is 31 x 31 pixels. There are 4096 reference blocks in a frame. 
The design is to minimize the total area and energy consumed by the logic over the entire simulation of the test set. The design must operate at the speed given above. 


## Verification Plan
Several test benches in Verilog will be developed with known vectors as well as random stimulus. These test benches will be applied to the design and the results will be compared against expected outcomes. The expected outcomes will be produced using a reference model or manually and compared against the outcomes produced by the design under test. 


## Design Plan
After verification of the RTL code, the design is taken to the ASIC flow starting with front-end synthesis and timing check, followed by back-end physical design involving placement, clock-tree synthesis, and routing. The parasitics will be extracted from layout for final timing check using prime-time. Efforts will be made to improve the design in terms of power consumption and area, while meeting the timing.

## References

## Language Used 
- Verilog
- tcl

## Tools Used
- Synopsys
- Synopsys Design Compiler
- PrimeTime
- ICCompiler II (Physical Design)

## Things Learned in the Process
During the synthesis phase of homework assignments and the project, learned how to do the following utilizing Synopsys Design Compiler (DC):
- adjust clock periods in order to get the fastest possible speed for the design.
- recompile incrementally after each new clock period declaration in order to read slack and timing reports.
- Figure out limits of the design in terms of clock speeds for the proposed design.
  
During the physical design process, learned how to do the following 
- Create a floorplan to map the logical description of the design to the physical description.

### Side Note:
This project is for the Advanced Digital Design class taken in San Francisco State University, and most directories are from the school server. Whatever is posted in this repository is work that I've accomplished by myself and with the help of other classmates if applicable. 

