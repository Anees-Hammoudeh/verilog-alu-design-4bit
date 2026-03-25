# 4-Bit ALU Design in Verilog

This project implements a simple 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. It demonstrates multiple hardware design approaches, including structural modeling, dataflow modeling, and behavioral modeling.

## Overview

The project was developed as part of a Digital Systems course and focuses on designing and verifying a basic ALU capable of performing arithmetic and logic operations on 4-bit inputs.

The design includes the core building blocks required for ALU construction, such as logic gates, adders, and subtractors, along with simulation and schematic files used during implementation and testing.

## Features

- 4-bit ALU design in Verilog
- Supports basic arithmetic and logic operations
- Multiple design styles:
  - Structural modeling
  - Dataflow modeling
  - Behavioral modeling
- Modular implementation using reusable components
- Simulation waveforms and schematic design files included

## Supported Operations

The ALU uses a 3-bit control input to select the required operation.

| OpCode | Operation |
|--------|-----------|
| 000    | Subtraction |
| 001    | Addition |
| 010    | Bitwise OR |
| 011    | Bitwise AND |

## Project Modules

### Basic Modules
- `ands.v` — 4-bit bitwise AND
- `ors.v` — 4-bit bitwise OR
- `half_adder.v` — half adder
- `full_adder.v` — full adder
- `four_bits_adder.v` — 4-bit ripple carry adder
- `four_bits_subtractor.v` — 4-bit subtractor using 2’s complement

### ALU Implementations
- `ALU_dataFlow.v` — ALU using dataflow modeling
- `ALU_Behavioral.v` — ALU using behavioral modeling

### Other Files
- `Digital Project reportt.pdf` — project report and explanation
- `.bdf` / `.bsf` files — schematic design files
- `.vwf` files — simulation waveform files
- `.bak` files — backup files

## Design Approaches

### Structural Modeling
Used to implement low-level hardware components such as logic gates, half adders, full adders, and the ripple carry adder.

### Dataflow Modeling
Used to describe ALU behavior through continuous assignments and operation selection logic.

### Behavioral Modeling
Used to describe ALU functionality at a higher abstraction level using procedural blocks.

## How to Run

1. Open the project in Quartus or your Verilog simulation environment.
2. Compile the Verilog source files.
3. Run the simulation using the provided waveform files if needed.
4. Test different OpCode values and input combinations to verify ALU functionality.
