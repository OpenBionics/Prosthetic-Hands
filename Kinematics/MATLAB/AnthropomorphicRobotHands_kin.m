%% #### -------------------------------------------------------------- #### 
%% Neurorobotics Group, Control Systems Lab                  
%% School of Mechanical Engineering                         
%% National Technical University of Athens (NTUA)            
%% Address: 9 Heroon Polytechniou Str. Zografou, Athens, 15780                                      
%% Office: Building M, Basement, NeuroRobotics Group           
%% Phone Number: +30-210-7724012                               
%% #### -------------------------------------------------------------- #### 

function A = AnthropomorphicRobotHands_kin(HL, HB, q)

%%%% Anthropomorphic Robot Hand Kinematics %%%%
% HL=185;
% HB=89;
%convert degrees to rad
q = deg2rad(q);


%Plalanges Lengths of Fingers
%Thumb phalanges lengths of finger links in mm
ThumbCMC = 0.171*HL; %parameterized by robot hand and include z-axis
ThumbPIP = 0.237*HL; %pulley to finger base
ThumbMIP = 0.143*HL;
ThumbDIP = 0.097*HL;

%Index phalanges lengths of finger links in mm
IndexPIP = 0.245*HL; 
IndexMIP = 0.143*HL;
IndexDIP = 0.097*HL;

%Middle phalanges lengths of finger links in mm
MiddlePIP = 0.266*HL; 
MiddleMIP = 0.170*HL;
MiddleDIP = 0.108*HL;

%Ring phalanges lengths of finger links in mm
RingPIP = 0.244*HL; 
RingMIP = 0.165*HL;
RingDIP = 0.107*HL;

%Pinky phalanges lengths of finger links in mm
PinkyPIP = 0.204*HL; 
PinkyMIP = 0.117*HL;
PinkyDIP = 0.093*HL;


%Distances of Base Frames of Fingers
%distances of base thumb mm
% thumbX = -0.266*HB; 
% thumbY = 0.048*HL;  
% thumb=sqrt((thumbX^2)+(thumbY^2));

%distances of base index mm
indexX = -0.251*HB;
indexY = 0.447*HL;
index=sqrt((indexX^2)+(indexY^2));

%distances of base middle mm
middleX = 0.0*HB;
middleY = 0.446*HL;
middle=sqrt((middleX^2)+(middleY^2));

%distances of base ring mm
ringX =  0.206*HB;
ringY = 0.409*HL;
ring=sqrt((ringX^2)+(ringY^2));

%distances of base pinky mm
pinkyX = 0.402*HB;
pinkyY = 0.368*HL;
pinky=sqrt((pinkyX^2)+(pinkyY^2));


%Denavit-Hartenberg Parameters of Fingers
%Index DH     =      [THETA      D      A      ALPHA      SIGMA      OFFSET]
IndexLinkPIP  = Link([  0        0   IndexPIP    0          0           0  ], 'standard'); 
IndexLinkMIP  = Link([  0        0   IndexMIP    0          0           0  ], 'standard'); 
IndexLinkDIP  = Link([  0        0   IndexDIP    0          0           0  ], 'standard'); 

%Middle DH     =      [THETA      D       A      ALPHA      SIGMA       OFFSET]
MiddleLinkPIP  = Link([  0        0   MiddlePIP    0          0            0  ], 'standard'); 
MiddleLinkMIP  = Link([  0        0   MiddleMIP    0          0            0  ], 'standard'); 
MiddleLinkDIP  = Link([  0        0   MiddleDIP    0          0            0  ], 'standard'); 

%Ring DH     =      [THETA      D        A     ALPHA      SIGMA      OFFSET]
RingLinkPIP  = Link([  0        0     RingPIP    0          0           0  ], 'standard'); 
RingLinkMIP  = Link([  0        0     RingMIP    0          0           0  ], 'standard'); 
RingLinkDIP  = Link([  0        0     RingDIP    0          0           0  ], 'standard'); 

%Pinky DH     =      [THETA      D      A      ALPHA      SIGMA      OFFSET]
PinkyLinkPIP  = Link([  0        0   PinkyPIP    0          0           0  ], 'standard'); 
PinkyLinkMIP  = Link([  0        0   PinkyMIP    0          0           0  ], 'standard'); 
PinkyLinkDIP  = Link([  0        0   PinkyDIP    0          0           0  ], 'standard'); 

%Thumb DH     =      [THETA        D      A      ALPHA      SIGMA      OFFSET     ]
ThumbLinkPIP  = Link([-pi/24.5098  0   ThumbPIP   pi/2        0           0       ], 'standard'); 
ThumbLinkMIP  = Link([  0          0   ThumbMIP    0          0      pi/0.120278  ], 'standard'); 
ThumbLinkDIP  = Link([  0          0   ThumbDIP    0          0           0       ], 'standard'); 

%RobotFingers=            [     PIP             MIP            DIP     ]   
Index        = SerialLink([IndexLinkPIP    IndexLinkMIP   IndexLinkDIP ], 'name', 'Index');
Middle       = SerialLink([MiddleLinkPIP   MiddleLinkMIP  MiddleLinkDIP], 'name', 'Middle');
Ring         = SerialLink([RingLinkPIP     RingLinkMIP    RingLinkDIP  ], 'name', 'Ring');
Pinky        = SerialLink([PinkyLinkPIP    PinkyLinkMIP   PinkyLinkDIP ], 'name', 'Pinky');
Thumb        = SerialLink([ThumbLinkPIP    ThumbLinkMIP   ThumbLinkDIP ], 'name', 'Thumb');


%Rotation Matrix Adduction/Abduction
%Finger Rotation=       [Roll-X    Pitch-Y        Yaw-Z         ]
ThumbRot1       =rpy2tr([0       pi/2.8391167       0           ]);
%ThumbRot2       =rpy2tr([0             0          -pi/0.12027778]);
IndexRot        =rpy2tr([0      -pi/12.676056       0           ]);
RingRot         =rpy2tr([0       pi/12.618773       0           ]);
PinkyRot        =rpy2tr([0       pi/15.716263       0           ]);


%Transformation Matrix Base Fingers
%TIndex    =     DH   (  theta ,   d  ,   alpha  ,   a   ) * RotY
Index.base = (DH_array(pi/1.712,   0  ,   pi/2  , index ))*IndexRot;
%ForwardKinematicsIndex
A{1} = Index.fkine(q(1:3));

%TMiddle    =     DH   (  theta ,   d  ,   alpha  ,   a    ) 
Middle.base = DH_array (  pi/2  ,   0  ,   pi/2  , middle );
%ForwardKinematicsMiddle
A{2} = Middle.fkine(q(4:6));

%TRing    =     DH   (   theta ,   d  ,   alpha  ,   a   ) * RotY
Ring.base = (DH_array(pi/2.3566,   0  ,   pi/2  ,  ring ))*RingRot;
%ForwardKinematicsRing
A{3} = Ring.fkine(q(7:9));

%TPinky    =     DH   (  theta ,   d  ,   alpha  ,   a   ) * RotY
Pinky.base = (DH_array( pi/2.89,   0  ,   pi/2  , pinky ))*PinkyRot;
%ForwardKinematicsPinky
A{4} = Pinky.fkine(q(10:12));

%TThumb    =     DH   (  theta  ,   d   ,   alpha  ,     a    ) * RotY
Thumb.base = (DH_array(pi/1.6275,   19  ,    pi/2  , ThumbCMC ))*ThumbRot1;
%ForwardKinematicsThumb
A{5} = Thumb.fkine(q(13:15));


%Anthropomorhpic Robot Hand Plot
Index.plot(q(1:3)); hold on;
Middle.plot(q(4:6)); hold on;
Ring.plot(q(7:9)); hold on;
Pinky.plot(q(10:12)); hold on;
Thumb.plot(q(13:15)); hold on;
axis ([-100 100 0 220 -20 120]);
