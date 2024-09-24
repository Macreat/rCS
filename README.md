repository computational structures course 
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
 

Control of the LD2 (PA5) LED is done using bit registers in the STM32:

1. Enable the GPIOA port clock by setting the RCC->AHB2ENR register.
2. Pin PA5 is configured as output by setting the corresponding bits in GPIOA->MODER.
3. The LED is turned on and off using the GPIOA->BSRR register, activating and deactivating the PA5 bit directly, without using the HAL