This repository contains my work for the Computational Structures course. 
It was created from the second commit made when the course began in February.
------------------------------------------------------------------------------------

This repository contains the initialization of a basic STM32L4 project. The current setup includes:

UART Communication (USART2): Configured to handle serial communication at 115200 baud, with 8 data bits, 1 stop bit, and no parity. 
This is useful for debugging or communication with external devices.
GPIO Initialization: Several GPIO pins have been initialized to control digital outputs or respond to external interrupts. 
This includes pins configured for buttons (S1 and S2) and output LEDs (D1, D3, and D4).
System Clock Configuration: The clock system has been set up using the MSI oscillator, with a PLL enabled to reach higher speeds.
 This provides a stable clock source for the MCU’s operations.
Basic Interrupt Management: EXTI interrupts have been configured for certain GPIO pins
 allowing the system to react to external button presses or similar triggers.