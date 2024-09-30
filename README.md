## repository computational structures course

Current functionalities and configuration for requirements of the system

UART Communication (USART2): Configured to handle serial communication at 115200 baud, with 8 data bits, 1 stop bit, and no parity.
This is useful for debugging or communication with external devices.

GPIO Initialization: Several GPIO pins have been initialized to control digital outputs or respond to external interrupts.
This includes pins configured for buttons (S1 and S2) and output LEDs (D1, D3, and D4).

System Clock Configuration: The clock system has been set up using the MSI oscillator, with a PLL enabled to reach higher speeds.
This provides a stable clock source for the MCU’s operations.

Basic Interrupt Management: EXTI interrupts have been configured for certain GPIO pins
allowing the system to react to external button presses or similar triggers.

Non-functional:

1. Have 3 buttons: Left Turn, Right Turn, Park.
2. Have 3 lights (LEDs): System Heartbeat, Left Light, Right Light.
3. Have a debugging port with the PC: USART2

Functional: 4. Heartbeat with a frequency of 1Hz to indicate that the system is working. 5. If a turn button is pressed 1 time: the corresponding side light flashes 3 times. 6. If a turn button is pressed 2 times in less than 300ms: the light on the corresponding side flashes indefinitely. 7. If a turn button is pressed and the light on the other side is active: the light is deactivated. 8. If the button for the parking signal is pressed: it works just like a real car, example: Tesla. 9. The flashing frequency of the lights must be acceptable according to "The General Traffic Regulations". 10. Major system events should be able to be identified on a PC serial console.
