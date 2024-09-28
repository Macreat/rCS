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

Current functionalities and configuration

Button Interrupt (PC13):

The button is configured as an external interrupt. When pressed, it calls the HAL_GPIO_EXTI_Callback function to toggle the flag variable.
The flag controls the behavior of the LED: when the flag is set, the LED toggles 10 times (5 on/off cycles).
Main Loop:

The main loop continuously checks the state of the flag:
If the flag is set (flag == 0), the LED will blink 5 times (10 toggles).
If the flag is not set, the LED remains off.
Flag Mechanism:

The flag is a volatile variable that is toggled between 0 and 1 using the line flag = !flag; in the interrupt handler. This ensures that pressing the button will alternate between blinking the LED and turning it off.
