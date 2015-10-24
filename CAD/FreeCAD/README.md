# Prosthetic Hand in Freecad

As we mention [here](https://hackaday.io/project/4745-openbionics-affordable-prosthetic-hands/log/25696-migrating-our-designs-to-freecad)
we start to design the prosthetic hand in Freecad in order to be freely accessible to all and because we believe in open source!!

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/Freecad5.png" width="60%" height="60%" />

All the proccess is on the go. For now we have designed the palm with differential mechanism and thumb base. Also we have updated some parts.

First of all the bars of differential mechanism are changed.

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/Freecad6.png" width="60%" height="60%" />

As depicted, we ruduced the radius of the button axle and also the hole in the bars. This change, makes two coupled (Index-Middle) fingers more independent when one finger is locked. The radius now is 3mm that means when one finger is locked and the other moves, the locked finger tendon will move a distance of 3mm*angle_of_bar. For instance,

angle_of_bar = PI/4 , then
the tendon moves distance, ~2.35mm

Also we change a litle the tendon routing. As you can see in the below picture, the tendon comes out from the side of palm in order to connected with the body harness for prosthetic hands. With this configuration you can also put the servo motor in the same place (under devepolment).

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/Freecad7.png" width="60%" height="60%" />

A new thumb mechanism is tested, but it did not work as we expected.
As depicted we tried to add friction with rubber (blue arrow), but is not enough to resist to the force from tendon.

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/Freecad8.png" width="60%" height="60%" />


Stay tunned for more updates!!
