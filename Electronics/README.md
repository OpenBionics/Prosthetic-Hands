# Electronic Breakout Board for Prosthetic Hand

We present the development of a breakout board for controlling our prosthetic hand. It is a PCB (printed circuit board) with pin headers to accomodate two different servo motors, such as standard servo and herkulex. It can have both analog inputs (e.g. [EMG](http://www.advancertechnologies.com/p/muscle-sensor-v3.html) signals) and digital inputs (e.g. buttons for [RobotHandExtension](https://github.com/OpenBionics/Robot-Hands/tree/master/CAD/Interfaces/Extension)).
An I2C bus can also be used in order to connect sensors like [takktile] (http://www.takktile.com/) or other servos such as the [openservo](http://openservo.com/). The breakout board also has external pins for development. 


The main microcontroller we currently use is an Arduino Micro Pro, equipped with an ATmega32U4 core. The PCB can be powered by an external power supply or a battery. 

The board is currently under testing. Pictures of the board and its development process can be found below.

# Pinout

The Pin Mapping of the breakout board.

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/ProstheticBoard.png" width="60%" height="60%" />

# Board Development

The development of the breakout board was done using the facilities of
the Athens Hackerspace (Thanks!!!). Some photos of the development process and 
final result.

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/ProstheticBoardFinal.png" width="60%" height="60%" />

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/ProstheticBoard6.jpg" width="60%" height="60%" />

The OpenBionics Electronics Library can be found [here](https://github.com/OpenBionics/Robot-Hands/tree/master/Electronics).
