# Parametric CAD file for 2D Design

## Guide for perosnaliszd design

Τhe use of parametric models derived from human hand anthropometry studies, allows for the development of personalized prostheses. The only parameters that we need in order to derive the finger phalanges lengths and the personalized finger base frames positions and orientations, are the human hand length (HL) and the human hand breadth (HB). 

We have modified our CAD files in order to integrate the required parameters (HL & HB) for the replication of a personalized design. Firstly, you need to decide which hand you want to replicate (Right or Left). You can find below a quick guide for the production of the personalized design. The procedure is the same for both hands.

1. Open the part file "prostheticParameters.SLDPRT" which can be found @ <a href="https://github.com/OpenBionics/Prosthetic-Hands/blob/master/CAD/3D%20Design/prostheticParameters.SLDPRT">Prosthetic-Hands/CAD/3D Design</a>.
2. Make the "parametersSketch" file editable. You can see there, the parameters that you can change. Their values are reported in mm and NOT in inches.
3. Open the assembly file "AnthropomorphicHandAssembly.SLDASM" which can be found @ <a href= "https://github.com/OpenBionics/Prosthetic-Hands/tree/master/CAD/3D%20Design/Assembly">Prosthetic-Hands/CAD/3D Design/Assembly</a>.
4. Go to the file "prostheticParameters.SLDPRT" and change the desired values (HL=hand length, HB=hand breadth & fingerWidth) according to the following figure and then save the file.

<img src="https://github.com/OpenBionics/Prosthetic-Hands/blob/master/Pics/HumanHand.jpg" width="40%" height="40%"/>
 
5. Go to the assembly file "AnthropomorphicHandAssembly.SLDASM" and rebuild it. All .SLDPRT files that are used in the assembly should be rebuilt.
6. If you want .STL files, you should open every rebuilt part and then choose "Save as .STL".

## 3D Design Model

In the following figure you can see the 2D Design model

<img src="https://github.com/OpenBionics/Prosthetic-Hands/blob/master/Pics/AnthropomorphicHandAssembly_Guide.png" width="40%" height="40%"/>

##Things to note:

1. The design has specific constraints, which cover the 95th percentile of the human hand and those are:<br/>
Hand Length: 182 - 225 mm<br/>
Hand Breadth: 82.5 - 110 mm.
2. Dimensions should be changed symmetrically. The mean HL/HB ratio is 2.2, so if your new assembly has errors it is probably either because you didn't measure correctly your hand values or because your hand construction is very far from the human mean value. 
3. For editing our CAD files you should own Solidworks 2014 or a later version. In case that you don't have the required software, complete this <a href="http://www.openbionics.org/personalizeddesignswebform/">webform</a> in the <a href="http://www.openbionics.org/">OpenBionics</a> website. We are currently in the process of preparing our designs with open-source CAD software. 
4. Our approach is inspired by the Yale Open Hand project. More details can be found <a href="http://www.eng.yale.edu/grablab/openhand/OpenHand%20CAD%20Guide.pdf">here<a/>.

