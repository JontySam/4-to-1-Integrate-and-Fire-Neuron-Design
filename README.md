# 4-to-1 Integrate-and-Fire Neuron

**Author:** Samson Hruday Chinta
**Course:** EE 5323 - VLSI Design I

## Objective
To design a high-performance 4-to-1 Integrate-and-Fire neuron that maximizes speed.

## Description
This project implements a 4-to-1 Integrate-and-Fire (IF) neuron using a 16nm technology. The architecture is designed to evaluate a weighted sum of inputs and trigger an output spike (F) based on specific carry conditions. The design is optimized for speed.

## Architecture
The neuron architecture consists of:
*   A weighted sum block with 16 AND gates.
*   Two 4-bit adders for computing partial sums.
*   A carry checker (OR gate) for early termination.
*   A final 4-bit adder.
*   D-Flip Flops (C2MOS) for sequential and synchronized computation.

## File Descriptions
*   `EE5323_Project_3_chint078_Chinta_Samson_Hruday.pdf`: The main project report with detailed information about the design, architecture, and performance.
*   `neuron.sp`: The SPICE netlist for the neuron circuit (inferred from `testbench_IF.sp`).
*   `testbench_IF.sp`: The main HSPICE testbench for the neuron. It applies input stimuli and measures the output.
*   `IF.sh`: A shell script for running the simulation and verifying the output against a golden reference (`model_IF.txt`).
*   `model_IF.txt`: The golden reference file for the expected output.
*   `TB_delay_function.txt` and `TB_power.txt`: Testbenches for measuring delay and power.
*   `Project 3 testbench.docx`, `Project 3-cover.pdf`, `Project 3.pdf`: Supporting documentation.

## How to Run Simulation
1.  Make sure you have a SPICE simulator (like HSPICE) installed.
2.  Modify the `testbench_IF.sp` file to set the correct path to the SPICE model library.
3.  Run the simulation using the `IF.sh` script:
    ```bash
    sh IF.sh
    ```
4.  The script will print "Passed" if the simulation output matches the expected output, and "Failed" otherwise.
