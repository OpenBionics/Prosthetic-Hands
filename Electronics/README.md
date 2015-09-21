# Electonic Break-out for Prosthetic Hand

We start to develop a break out for prosthetic hand in order to 
control it. The PCB has pin headers to connect two different servo 
motors like standard servo and herkulex. Also it desinged to have 
analog inputs like [EMG](http://www.advancertechnologies.com/p/muscle-sensor-v3.html) and digital inputs like buttons for [RobotHandExtension.](
https://github.com/OpenBionics/Robot-Hands/tree/master/CAD/Interfaces/Extension) 
We have also use the I2C bus in order to connect sensors like this [takktile](http://www.takktile.com/) or other servo like the [openservo](
http://openservo.com/). The break-out board has external pins for development. The main microcontroller is arduino micro pro with ATmega32U4 core
. The pcb powered by external power supply or battery. The input power in consist of the servo motor. The all procces is under develoment.

# Pinout
The Pin Mapping of the break-out board.

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/ProstheticBoard.png" width="60%" height="60%" />

# Produce Prosthetic Hand Board

In order to produce our break out board we use the facilities of 
hackerspace in athens (Thanks!!!). Some photos of the procces and 
final result.

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/ProstheticBoardFinal.png" width="60%" height="60%" />

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/ProstheticBoard6.jpg" width="60%" height="60%" />

The library of openbionics is placed [here](https://github.com/OpenBionics/Robot-Hands/tree/master/Electronics).