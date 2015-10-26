# HDM Design

## Introduction

Our method of making robot fingers for robot and prosthetic hands is very simple and it doesn't require complex tools. But a main disadvantage of this method is that the proccess isn't automated. For that reason we searched for fabrication methods using elastomer materials for flexure joint and rigid parts for phallages, to maintain the characteristics of our design. We found the hybrid deposition manufacturing [HDM](http://www.eng.yale.edu/grablab/pubs/Ma_JMR2015.pdf), proccess. In this process you can use 3D-printed parts to make a mold for two-part urethane or epoxy resin.

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM3.png" width="60%" height="60%" />

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM6.png" width="60%" height="60%" />

Also with this, electronics like force sensors, NFC could be embeded inside the part. That solves our major disadvantage but it increases the cost of making one finger, because the tools that is used isn't as cheap as for instance the darners.
 
<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM10.png" width="60%" height="60%" />


## Designs

Our design based on human hand model. For now we use a ready model in solidworks like [this](https://grabcad.com/library/human-left-hand). Our next steps is to use 3d scanner (kinect, project soli, etc) to recostruct the other hand of amputee and finally make a persollize prosthetic hand.

To use this design in solidworks, you must donwload the files form [here](https://grabcad.com/library/human-left-hand). When you open for example /Fingers/Index/src/IndexMold.sldASM the solidworks asks for a lost part, you can browse in the files which you have downloaded to find it.

## Build of Materials and Tools

As depicted the build of materials are:

* two-part urethne
* etc

Necessery tools are:

* vacuum chamber
* etc 

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM2.png" width="60%" height="60%" />


## NFC

As we have already mentioned, with HDM process, could be embeded inside the part electronics like NFC. Mina's had the idea to do this when he read this [article](http://hackaday.com/2015/10/15/hackaday-dictionary-near-field-communications-nfc/). 

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM4.png" width="60%" height="60%" />

