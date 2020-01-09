# Project 3: Sequential Chips

## Background
The computer's main memory, also called Random Access Memory, or RAM, is an addressable sequence of n-bit registers, each designed to hold an n-bit value. In this project you will gradually build a RAM unit. This involves two main issues: (i) how to use gate logic to store bits persistently, over time, and (ii) how to use gate logic to locate ("address") the memory register on which we wish to operate.

## Objective
Build all the chips described in Chapter 3 (see list below), leading up to a Random Access Memory (RAM) unit. The only building blocks that you can use are primitive DFF gates, chips that you will build on top of them, and chips described in previous chapters.

## Chips

Chip Name | Description
------------ | -------------
Bit | 1-bit register
Register |  16-bit register
RAM8 |  16-bit / 8-register memory
RAM64 |  16-bit / 64-register memory
RAM512 |  16-bit / 512-register memory
RAM4K |  16-bit / 4096-register memory
RAM16K |  16-bit / 16384-register memory
PC |  16-bit program counter
