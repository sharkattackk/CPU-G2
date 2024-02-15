# Project Checklist

## Overview
This README.md serves as a checklist for the ongoing project focused on the development of a Processor

## Checklist

### Bus System Tasks
- [ ] Fix bus errors
- [ ] Test bus system for stability and performance

### Arithmetic Modules
- [ ] Implement MUL module
- [x] Add module
- [x] Sub module
- [ ] Negate module
- [ ] Div module

### Logic Modules
- [x] OR module
- [x] XOR module
- [x] AND module
- [ ] Not
### Shift Modules
- [ ] SHR module (Shift Right)
- [ ] SHRA module (Shift Right Arithmetic)
- [ ] SHL module (Shift Left)

### Memory Access Modules
- [ ] Implement MDR (Memory Data Register)
- [ ] Implement MAR (Memory Address Register)

### Control Units
- [ ] IR module (Instruction Register)
- [ ] PC Module (Program Counter)

## Testing and Validation
- [ ] Set up Testbench for each module

## Documentation
Document the design, implementation details, and testing procedures for each module. Include schematics, code comments, and testing results.

## Version Control
Regularly update this checklist and the associated project repository to reflect progress and any changes in project scope or objectives.

## Notes
- The cOut signal in the subtraction and addition operation using two's complement arithmetic reflects the carry-out of the addition of A and the two's complement of B, serving as an overflow indicator rather than a traditional borrow from binary subtraction.
- The overflow indicator serves as a critical checkpoint in ensuring that systems operate correctly, safely, and securely by detecting and managing situations where calculations exceed the bounds of the chosen representation.

## Contribution Guidelines
- Ensure code is well-documented.
- Follow coding standards and conventions for consistency.
- Test your modules thoroughly before pushing to the main branch.

