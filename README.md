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

Project: 4100901 Tesla Turn and Hazard Signal System
This repository contains an implementation of a Tesla-style turn and hazard signal system using STM32 microcontrollers. The project includes features like UART communication, GPIO pin control, and interrupt-driven signal processing, along with custom functions to verify specific data sequences such as a document number for user identification.

## Current functionality

UART Communication (USART1 and USART2):

USART1: Configured to handle serial communication with external devices and receive a sequence of bytes that match a pre-defined document number.
USART2: Used for serial communication, configured at 256000 baud rate with 8 data bits, 1 stop bit, and no parity. USART2 also serves for debugging and providing user feedback through UART transmissions.
GPIO Initialization:

Several GPIO pins are initialized to control outputs such as LEDs or handle external interrupts via buttons.
Pins:
Buttons (S1, S2, S3)
LEDs (D1, D2, D3)
Turn Signal and Hazard Implementation:

Turn signals are controlled by S1 and S2 button presses. The left or right LED will toggle a predefined number of times when the respective button is pressed. A long press or a double press will keep the LED toggling indefinitely until interrupted.
Heartbeat Functionality:

A simple heartbeat function toggles an LED at a frequency of 1Hz, indicating that the system is running properly.
Document Number Verification:

The system verifies a pre-defined document number sent through USART1. Once the correct sequence is received, the user’s name ("Mateo Almeida") is printed via USART2. Incorrect sequences will reset the verification process.
System Clock Configuration:

The system clock is set up using the MSI oscillator, and a PLL (Phase-Locked Loop) is enabled for high-speed operations. This configuration ensures that the microcontroller runs at stable clock speeds, providing timing accuracy for communication protocols like UART and GPIO operations.
Interrupt-Driven System:

EXTI (External Interrupt) is used to handle button presses efficiently, allowing the system to respond to user input asynchronously without constantly polling the button states.
Non-Functional Characteristics:
Real-time Feedback via UART: The system provides real-time feedback to the user through UART for both debugging and communication purposes.
Efficient Use of Ring Buffers: Ring buffers are used to handle incoming UART data efficiently, reducing the likelihood of data loss and enabling continuous data processing.

## Future implementations

Complete Hazard Signal Functionality:

Develop functionality to simulate hazard lights (simultaneous toggling of left and right indicators) triggered by a specific button or condition.
Implement Additional Safety Features:

Add features to prevent toggling during unintended scenarios (e.g., during system reboots or incorrect button sequences).
Advanced Communication Handling:

Extend the system to communicate with other external devices (e.g., sensors, car modules) using I2C or SPI in addition to UART.
Power Management:

Optimize the system for low-power modes, especially during idle times, by utilizing STM32 power-saving features.
