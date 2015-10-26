# New HDM Design of Robot Fingers


## Introduction

Our initial method of creating fingers for robot and prosthetic hands was very simple and it didn't require any complex tools (silicone sheets were stitched onto the rigid phalanges with simple needles). The main disadvantages of this method are:
* the process isn't automated,
* the aesthetic aspect of the finger is not optimal (i.e., it doesn't feel like a product),
* the finger cannot easily accommodate extra parts (e.g., sensing elements or other electronics).

For these reasons we searched different fabrication methods for developing hands based on flexure joints.

Recently Ma et al [1] proposed a new methodology that is called hybrid deposition manufacturing [HDM](http://www.eng.yale.edu/grablab/pubs/Ma_JMR2015.pdf). HDM combines additive manufacturing (AM) with multi-material deposition and embedded components in order to produce robotic, mechatronic, and other articulated mechanisms.

## Design

Using the HDM approach for our prosthetic fingers we can embed inside them a wide range of electronics, like force sensors, flex sensors or even NFC tags that will facilitate interactions with other electronic devices. Of course the new design has the disadvantage that it requires more complex tools and is slightly more expensive.

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM1.png" width="60%" height="60%" />

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM6.png" width="60%" height="60%" />

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM11.png" width="60%" height="60%" />

The proposed design can be based on the human hand model. For now we use a ready [model](https://grabcad.com/library/human-left-hand) in SolidWorks. In the future we plan to use a 3D scanner (e.g., kinect, project soli, etc.) to reconstruct the intact hand of amputee, derive the mirror hand and build a personalized prosthesis.

To use this new design in SolidWorks, you can download the files form [here](https://grabcad.com/library/human-left-hand). When you open the .sldASM files, SolidWorks will ask for the missing parts. These parts can be found in the following [3D model](https://grabcad.com/library/human-left-hand). A future direction of ours is to make the HDM design parametric and migrate it to FreeCAD, as we did for the [initial design](https://hackaday.io/project/4745-openbionics-affordable-prosthetic-hands/log/27049-prosthetic-hand-in-freecad-palm-and-tendon-routing).

## Materials and Tools Required

As depicted the build of materials are:

* paint of the desired color
* liquid polyurethane (PMC 780)
* cotton swabs
* paper tape
* NFC tags

The necessary tools are:

* a weighting scale
* a vacuum chamber
* plastic cups to mix the two liquid silicone parts.

The prices of the different hand components can be found [here](https://hackaday.io/project/4745-openbionics-affordable-prosthetic-hands/log/27133-the-role-of-the-openbionics-project-in-a-world-of-overprized-prosthetic-devices). The NFC tags [cost](http://www.amazon.com/gp/product/B00MNYCIKG?psc=1&redirect=true&ref_=oh_aui_detailpage_o00_s00) 15.50$ (for 25 tags). 

<img src="https://raw.githubusercontent.com/OpenBionics/Prosthetic-Hands/master/Pics/HDM2.png" width="60%" height="60%" />

## More Details

More details about this design can be found [here](https://hackaday.io/project/4745/logs?page=2).

### References

[1] Raymond R. Ma, Joseph T. Belter and Aaron M. Dollar, "Hybrid Deposition Manufacturing: Design Strategies for Multi-Material Mechanisms via 3D-Printing and Material Deposition", Journal of Mechanisms and Robotics, 2015.
