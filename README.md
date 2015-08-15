# OpenBionics - Prosthetic Hands

Nowadays most prosthetic hands cost dozens of thousands of USD. The OpenBionics initiative (www.openbionics.org) presents a new open-source design for highly functional prosthetic hands. The proposed hands cost less than 200$, weigh less than 300 gr and can be easily fabricated with off-the-shelf materials and rapid prototyping techniques (3D Printing). 

A novel differential mechanism (based on the whiffletree) allows the user to block the motion of each finger independently and facilitates the execution of 144 different grasps with only 1 actuator. The design is based on parametric models of hand anthropometry studies so it can easily be personalized to specific patients.

# Personalized Design

Τhe use of parametric models derived from human hand anthropometry studies, allows for the development of personalized prosthesis. The only parameters that we need in order to derive the finger phalanges lengths and the personalized finger base frames positions and orientations, are the human hand length (HL) and the human hand breadth (HB). 

We have modified our CAD files in order to integrate the required parameters (HL & HB) for the replication of personalized design. Firstly, you need to decide which hand you want to replicate (Right or Left). You can find below a quick guide for the production of personalized design where the procedure is same for both hands.

1. Open the part file "prostheticParameters.SLDPRT" which can be found @ <a href="https://github.com/OpenBionics/Prosthetic-Hands/tree/master/CAD/LeftHand">Prosthetic-Hands\CAD\Left</a>
2. Make the parametersSketch editable. You can see here the parameters that you can change their values in mm and NOT inch
3. Open the assembly file "AnthropomorphicHandAssembly.SLDASM" which can be found @ <a href= "https://github.com/OpenBionics/Prosthetic-Hands/tree/master/CAD/LeftHand/Assembly">Prosthetic-Hands\CAD\Left\Assembly</a>
4. Go to the part file "prostheticParameters.SLDPRT", change the desire values (HL=hand length, HB=hand breadth & fingerWidth) according to this <a href="http://www.handresearch.com/diagnostics/extraversion/hand-shape-index.jpg">
image</a> and save them
5. Go to the assembly file "AnthropomorphicHandAssembly.SLDASM" and rebuild it. All .SLDPRT files that used in the assembly should be rebuild
6. If you want .STL files you should open every rebuilded part and choose Save as .STL

#Things to note:

1. The design has specific constraints which cover the 95th percentile of human hand and those are:<br/>
Hand Length: 182 - 225mm<br/>
Hand Breadth: 82,5 - 110mm
2. Dimensions should be changed symmetrically. The mean HL/HB ratio is 2,2, so if your new assembly has errors it is probably either because you didn't measure correct your hand values or because your hand construction is far from the mean value
3. For editing our CAD files you should own Solidworks 2014 and after. In case you don't any have capable edition, complete this <a href="http://www.openbionics.org/personalizeddesignswebform/">webform</a> from ours <a href="http://www.openbionics.org/">OpenBionics</a> website. We are working on a project in ordet to further modify our design with an open-source CAD
4. Our approach is inspired from Yale OpenHand project and more details can be found <a href="http://www.eng.yale.edu/grablab/openhand/OpenHand%20CAD%20Guide.pdf">here<a/>
5. We are working on a complete Assembly Guide of our prosthesis which will include a video tutorial
