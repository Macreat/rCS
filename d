[33ma74b8ea[m[33m ([m[1;36mHEAD -> [m[1;32mdeliveryBranch[m[33m, [m[1;31morigin/deliveryBranch[m[33m)[m  ( TASK COMPLETE )  adding last functionality on the system : stationary mode to control the state for both leds using another button , in addition, the rest of the functionalities are completed, such as stopping the flashing of one LED when the other starts and the output is also verified through UART serial communication, finally, we change the README file with the current functionalities
[33m1f9bad5[m  implementing up to the sixth system requirement, where we control the left and right turn behavior of the system
[33m4be9945[m  ending interruption control managing button3 for stationary mode and implmenting first functional requirement, where we turn left light and see their respective control via UART
[33m2e3c2a1[m  adding locit to implement the heartbeat time on system
[33mfad28ce[m  adding logic for my control interruption ExtiCallback where i control the status of the flags according to user's actions pressing each button
[33ma0690dc[m  starting changes for delivery of the August Embedded Peripherals - Exercise,declaring the first variables and constants for serial communication and system control
[33m6333108[m  chaning currents functionalities and configurations on README file
[33m6426b14[m  correcting main structure, using a flag to control the interrupts delivered by my interrupt handler, managing the system state directly from my main loop making use of the state of my flag
[33m32401c6[m  trying to implementate toggle ld2 using exti callback
[33m938cae3[m  including stdbool library to manipulate same LD2 state using the blue button on PC13 but now configured on IOC as EXTERNAL INTERRUPTION and handling the control using an INTERRUPTION CONTROL (HalGpioExitCallBack)
[33mbd70e8e[m  (Practical challenge COMPLETE 08/03/24): we managed to make the LD2 turn on while the blue button is pressed using the new STM32CubeIDE project and HAL LIBRARIES, besides change the README document with current functionalities
[33ma8ecc18[m  (Practical challenge COMPLETE 08/03/24): we managed to make the LD2 turn on while the blue button is pressed using the new STM32CubeIDE project and HAL LIBRARIES
[33m3a43432[m  (TASK COMPLETE 29/02/24) reading state from blue button pin using IDR register and then declarate a conditional to control the LD2 state knowing if the button is pressed or not
[33m92c8a6d[m  (TASK COMPLETE 29/02/24) reading state from blue button pin using IDR register and then declarate a conditional to control the LD2 state knowing if the button is pressed or not
[33m1d3cb30[m adding initialization and declaration on IOC from PC13 as blue button used on bits 26 and 27
[33md58df77[m  just updating readme for last task
[33me4d78bd[m Setting up and MCU peripheral (TASK COMPLETE) as output, specifically, we set up the PA5 pin as GPIO_OUTPUT, named LD2 and modified the control register for our GPIO making it blink at 500 ms with our function delay
[33m55c611f[m blinking PA5 pin as output
[33m32a56a2[m  the clock is enabled for the GPIOA and in the same way the PA5 pin is configured as an output
[33m0d97609[m Setting up an MCU peripheral without HAL (at the moment verify ioc configuration and is initialized and declared the delay function for blink control
[33m1f2bf0b[m  first task 'Endianess' complete
[33ma4dec36[m  chaning the printf format to coincide with the type of value delivered as long usigned int for our uint32_t variables
[33m042c179[m  implementing the function on main loop with 0x12345678 as little endian value example
[33m75575ab[m  definition of the little to big endian function
[33m40cb2d0[m adding intialization from the function to use
[33md06e3a5[m first commit commenting on the functionalities of the main when initializing the peripherals
[33m1a5cee4[m feat(project): adding initialization
[33m10e033e[m Initial commit
