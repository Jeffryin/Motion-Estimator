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
