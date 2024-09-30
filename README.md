
## repository computational structures course

Current functionalities and configuration for requirements of the system

UART Communication (USART2): Configured to handle serial communication at 256000 baud, with 8 data bits, 1 stop bit, and no parity.
This is useful for debugging or communication with external devices.

GPIO Initialization: Several GPIO pins have been initialized to control digital outputs or respond to external interrupts.
This includes pins configured for buttons (S1 and S2) and output LEDs (D1, D3, and D4).

System Clock Configuration: The clock system has been set up using the MSI oscillator, with a PLL enabled to reach higher speeds.
This provides a stable clock source for the MCU’s operations.

Basic Interrupt Management: EXTI interrupts have been configured for certain GPIO pins
allowing the system to react to external button presses or similar triggers.

Non-functional:

# 4100901-tesla-turn-hazard-signal
This repo contains an approach to implement the tesla turn and hazard signals

## Current functionality

* Heartbeat blinks every 500ms.
* When left button is pressed once: left light blinks 3 times.
* When left button is pressed twice in less than 300ms: left light blinks indefinitely
* When right button is pressed and left light is active: right light stops.

## Future implementations

