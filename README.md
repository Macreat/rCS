## repository computational structures course

This repository contains the initialization of a basic STM32L4 project. The current setup includes:

UART Communication (USART2): Configured to handle serial communication at 115200 baud, with 8 data bits, 1 stop bit, and no parity.
This is useful for debugging or communication with external devices.

GPIO Initialization: Several GPIO pins have been initialized to control digital outputs or respond to external interrupts.
This includes pins configured for buttons (S1 and S2) and output LEDs (D1, D3, and D4).

System Clock Configuration: The clock system has been set up using the MSI oscillator, with a PLL enabled to reach higher speeds.
This provides a stable clock source for the MCU’s operations.

Basic Interrupt Management: EXTI interrupts have been configured for certain GPIO pins
allowing the system to react to external button presses or similar triggers.

Control of the LD2 (PA5) LED is done using bit registers in the STM32:

LD2 LED (PA5) Control: The LED is turned based on the state of the blue user button (PC13).
Button-Driven LED Control: The blue button (PC13) is configured as an external interrupt to control the LED on PA5.
Direct Register Manipulation: The project uses direct register manipulation to set GPIO pin states, improving efficiency.

PC13 (Blue Button): The blue button is connected to pin PC13, which is configured as an GPIO INPUT.
PA5 (LD2 LED): The LED on PA5 is turned when the button is pressed, using the bit-level control of GPIO registers.
