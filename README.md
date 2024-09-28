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

Control of the LD2 (PA5) LED using HAL Functions in STM32:

LD2 LED (PA5) Control: The LED on pin PA5 is controlled using HAL functions based on the state of the blue user button (PC13). The LED turns on when the button is pressed and turns off when the button is released.

Button-Driven LED Control with HAL: The blue button (PC13) is read using the HAL function HAL_GPIO_ReadPin. When the button is pressed (logic low), the LED on PA5 is turned on using the HAL_GPIO_WritePin function. When the button is not pressed (logic high), the LED is turned off.

GPIO Pin Control Using HAL: Instead of directly manipulating registers, the project uses the STM32 HAL (Hardware Abstraction Layer) library functions, which abstract the low-level details and make the code more readable and portable. This includes reading the button state and setting the LED state.

PC13 (Blue Button): The blue button is connected to pin PC13, which is configured as a GPIO input using the HAL function HAL_GPIO_ReadPin. The button state is checked continuously in the main loop.

PA5 (LD2 LED): The LED on PA5 is turned on or off based on the button state using the HAL function HAL_GPIO_WritePin. When the button is pressed, PA5 is set high to turn on the LED, and when the button is released, PA5 is set low to turn off the LED.
