# UART Protocol Design and Verification using Verilog HDL

## Overview
This project implements a Universal Asynchronous Receiver Transmitter (UART) protocol using Verilog HDL. The design consists of UART Transmitter, UART Receiver, and Baud Rate Generator modules. Functional verification is performed using Verilog testbenches, and the design is validated through simulation waveforms and RTL schematics.

## Features
- UART Transmitter (TX)
- UART Receiver (RX)
- Baud Rate Generator
- Configurable Baud Rate
- RTL Design using Verilog HDL
- Functional Verification using Testbenches
- Simulation Waveforms
- RTL Schematic Generation

## Project Structure

```
UART-Verilog/
├── uart_tx.v
├── uart_rx.v
├── baud_gen.v
├── uart_tx_tb.v
├── uart_rx_tb.v
├── baud_gen_tb.v
├── uart_tx_wave.png
├── uart_rx_wave.png
├── baud_gen_wave.png
├── uart_tx_rtl.png
├── uart_rx_rtl.png
├── baud_gen_rtl.png
└── README.md
```

## Tools Used
- Verilog HDL
- ModelSim
- Xilinx Vivado (RTL Schematic)

## Verification
Each module is verified using dedicated Verilog testbenches. Simulation waveforms confirm the correct functionality of UART transmission, UART reception, and baud rate generation.

## Results
- Successful UART data transmission and reception
- Correct baud rate generation
- Functional verification completed
- RTL schematics generated for all modules

## Applications
- Serial Communication Systems
- FPGA-Based Embedded Systems
- Microcontroller Interfaces
- Digital Communication Projects

## Author
**Tamilkumaran**
