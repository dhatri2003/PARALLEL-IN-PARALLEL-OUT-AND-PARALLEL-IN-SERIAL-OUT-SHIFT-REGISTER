# PIPO and PISO Shift Register Project

## Overview

This project involves the design and construction of two types of shift registers: Parallel In Parallel Out (PIPO) and Parallel In Serial Out (PISO). These registers are essential components in digital circuits used for data storage, manipulation, and transmission.

## Theory

### Shift Registers

A shift register is a sequential logic circuit composed of flip-flops connected in a cascade manner, where the output of one flip-flop serves as the input to the next. Shift registers are used to store and shift binary data. The number of flip-flops in a shift register determines the number of bits it can store.

### PIPO Shift Register

A PIPO shift register loads and outputs data in parallel. It is constructed using D flip-flops. When a clock pulse is applied, the loaded data is transferred to the flip-flops' output.

### PISO Shift Register

A PISO shift register loads data in parallel and outputs data serially. It includes control inputs to avoid conflicts between loaded and shifted data. When the control signal is set to load, data is loaded into the flip-flops. When set to shift, data is shifted serially to the output.

