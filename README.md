# Project Checklist

## Overview
This README.md serves as a checklist for the ongoing project focused on the development of a Processor

## Checklist

### Bus System Tasks
- [ ] Fix bus errors
- [ ] Test bus system for stability and performance

### Arithmetic Modules
- [x] Implement MUL module
- [x] Add module
- [x] Sub module
- [x] Negate module
- [ ] Div module

### Logic Modules
- [x] OR module
- [x] XOR module
- [x] AND module

### Shift Modules
- [x] SHR module (Shift Right)
- [ ] SHRA module (Shift Right Arithmetic)
- [x] SHL module (Shift Left)

### Memory Access Modules
- [x] Implement MDR (Memory Data Register)
- [ ] Implement MAR (Memory Address Register)  "Dont think we need this?"
- [x] Implement General Register (Register)

### Control Units
- [x] PC Module (Program Counter Register)
- [x] Z Register

## Testing and Validation
- [ ] Set up Testbench for each module

## Documentation
Document the design, implementation details, and testing procedures for each module. Include schematics, code comments, and testing results.

## Version Control
Regularly update this checklist and the associated project repository to reflect progress and any changes in project scope or objectives.

## Notes
- The cOut signal in the subtraction and addition operation using two's complement arithmetic reflects the carry-out of the addition of A and the two's complement of B, serving as an overflow indicator rather than a traditional borrow from binary subtraction.
- The overflow indicator ensures that systems operate correctly, safely, and securely by detecting and managing situations where calculations exceed the bounds of the chosen representation.
- wire is used to represent connections between parts
- 

## Contribution Guidelines
- Ensure code is well-documented.
- Follow coding standards and conventions for consistency.
- Test your modules thoroughly before pushing to the main branch.

