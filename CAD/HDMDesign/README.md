# New HDM Design of Robot Fingers

## Introduction

Our initial method of making robot fingers for robot and prosthetic hands was very simple and it didn't require any complex tools (silicone sheets were stitched onto the rigid phalanges with simple needles). The main disadvantages of this method are: 1) the proccess isn't automated, 2) the aesthetical aspect of the finger is not optimal (i.e., it doesn't feel like a product), 3) the finger cannot easily accomodate extra parts (e.g., sensing elements or other electronics). For these reasons we seeked different fabrication methods for developing hands based on flexure joints. 

Recently Ma et al [1] proposed a new methodology that is called hybrid deposition manufacturing [HDM](http://www.eng.yale.edu/grablab/pubs/Ma_JMR2015.pdf) and which ...

## Designs

Using the HDM approach for our prosthetic fingers we can embeed inside them a wide range of electronics like: force sensors, flex sensors or even NFC tags that will facilitate interactions with other electronic devices. Of course the new design has the disadvantage that it requires more complex tools and is slightly more expensive. 

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM3.png" width="60%" height="60%" />

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM6.png" width="60%" height="60%" />
 
<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM10.png" width="60%" height="60%" />

The design is based on the human hand model. For now we use a ready [model](https://grabcad.com/library/human-left-hand) in SolidWorks. In the future we plan to use a 3D scanner (e.g., kinect, project soli, etc.) to recostruct the intact hand of amputee, derive the mirror hand and build a personalized prostheses.

To use this new design in SolidWorks, you can download the files form [here](https://grabcad.com/library/human-left-hand). When you open the .sldASM files, SolidWorks will ask for the missing parts. These parts can be found in the following [3D model](https://grabcad.com/library/human-left-hand) .

## Build of Materials and Tools

As depicted the build of materials are:

...

Necessery tools are:

...

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM2.png" width="60%" height="60%" />


## NFC

As we have already mentioned, with the HDM process we are able to embeed inside the finger various electronics like a set of NFC tags. We had the idea to do this, when we read a Hackaday [article](http://hackaday.com/2015/10/15/hackaday-dictionary-near-field-communications-nfc/) regarding near field communications. 

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM4.png" width="60%" height="60%" />

### References

[1] Raymond R. Ma, Joseph T. Belter and Aaron M. Dollar, "Hybrid Deposition Manufacturing: Design Strategies for Multi-Material Mechanisms via 3D-Printing and Material Deposition", Journal of Mechanisms and Robotics, 2015.
