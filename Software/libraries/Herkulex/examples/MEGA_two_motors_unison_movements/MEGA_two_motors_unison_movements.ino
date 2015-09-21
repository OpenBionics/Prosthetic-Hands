#include <Herkulex.h>

void setup()  
{
  delay(2000);  //a delay to have time for serial monitor opening
  Serial.begin(115200);    // Open serial communications
  Serial.println("Begin");
  Herkulex.beginSerial1(115200); //open serial port 1 
  Herkulex.reboot(1); //reboot first motor
  Herkulex.reboot(2); //reboot second motor
  delay(500); 
  Herkulex.initialize(); //initialize motors
  
  // read status
  Serial.println("");
  Serial.print("Status1:"); 
  Serial.println(Herkulex.stat(1));
  Serial.print("Status2:"); 
  Serial.println(Herkulex.stat(2));
  
  // move servos in continous rotation at unison
  Serial.println("");
  Serial.println("MoveSpeedALL ");
  Herkulex.moveSpeedAll(1,300,1);
  Herkulex.moveSpeedAll(2,300,1);
  Herkulex.actionAll(672);
  delay(2500); 
   
  // move all to position
  Serial.println("");
  Serial.println("Move All to position");
  Serial.println("Move Position1: 200");
  Serial.println("Move Position2: 420");
  Herkulex.moveAll(1, 200, 2); //move to position 200
  Herkulex.moveAll(2, 420, 2); //move to position 820 
  Herkulex.actionAll(1000); //start movement in 1500 milliseconds
  delay(1100);
  Serial.print("Get Position servo 1:"); 
  Serial.println(Herkulex.getPosition(1)); //get position
  Serial.print("Get Position servo 2:"); 
  Serial.println(Herkulex.getPosition(2));//get position
  
  delay(10);
   
   // move all to angle
  Serial.println("");
  Serial.println("Move All to Angle");
  Serial.println("Move Angle1: 120.5 degrees");
  Serial.println("Move Position2: -120.5 degrees");
  Herkulex.moveAllAngle(1, 120.5, 2);;
  Herkulex.moveAllAngle(2, -120.5, 2); 
  Herkulex.actionAll(2000);
  delay(2100);
  Serial.print("Get Angle1:"); 
  Serial.println(Herkulex.getAngle(1));
  Serial.print("Get Angle2:"); 
  Serial.println(Herkulex.getAngle(2));
  
  
  Herkulex.setLed(2,LED_PINK); //set the led 
  Herkulex.setLed(1,LED_GREEN2); //set the led
  
  Herkulex.end();
}

void loop(){
}

