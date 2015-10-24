# Prosthetic Hand in Freecad

As we have already mentioned [here](https://hackaday.io/project/4745-openbionics-affordable-prosthetic-hands/log/25696-migrating-our-designs-to-freecad), we are in the process of migrating our designs to Freecad in order to be freely accessible to all and because we believe in fully open source solutions!

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/Freecad5.png" width="60%" height="60%" />

Up to now we have designed the palm with the differential and the thumb abduction / adduction mechanisms. Prosthetic fingers (the easy part) will follow as we are in the process of improving their design. We have also redesigned some parts for better performance (e.g., the bars of the differential mechanism are changed).

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/Freecad6.png" width="60%" height="60%" />

As depicted, we reduced the radius of the button axle and the radius of the holes of the bars. This change, makes the coupled fingers (e.g., index and middle) more independent when one of them is locked. The radius is now 3mm. When one finger is locked and the other moves, the locked finger tendon will move a distance of 3 mm*angle_of_bar. For example, if the angle_of_bar = PI/4 then the tendon moves a distance of ~2.35 mm. 

We also modified the tendon routing. As you can see in the picture below the tendon comes out from the side of palm in order to be connected with the body harness for body powered prosthetic hands. With this configuration you can also put the servo motor in the same position (currently under development).

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/Freecad7.png" width="60%" height="60%" />

A new thumb mechanism was also tested. As depicted in the picture below, we tried to add friction with a rubber layer (blue arrow) that needs appropriate tuning in order to resist the force of the tendon.

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/Freecad8.png" width="60%" height="60%" />

Stay tuned for more updates!!!
