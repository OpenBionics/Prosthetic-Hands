#include <Herkulex.h>
int n=0xfd; //motor ID - verify your ID !!!!

void setup()  
{
  delay(2000);  //a delay to have time for serial monitor opening
  Serial.begin(115200);    // Open serial communications
  Serial.println("Begin");
  Herkulex.beginSerial1(115200); //open serial port 1 
  Herkulex.reboot(n); //reboot first motor
  delay(500); 
  Herkulex.initialize(); //initialize motors
  delay(200);  
}

void loop(){
  Serial.println("Move Angle: -100 degrees");
  Herkulex.moveOneAngle(n, -100, 1000, LED_BLUE); //move motor with 300 speed  
  delay(1200);
  Serial.print("Get servo Angle:");
  Serial.println(Herkulex.getAngle(n));
  Serial.println("Move Angle: 100 degrees");
  Herkulex.moveOneAngle(n, 100, 1000, LED_BLUE); //move motor with 300 speed  
  delay(1200);
  Serial.print("Get servo Angle:");
  Serial.println(Herkulex.getAngle(n));
  
}


