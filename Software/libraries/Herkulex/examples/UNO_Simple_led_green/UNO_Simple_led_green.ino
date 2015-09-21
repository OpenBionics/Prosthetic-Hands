#include <Herkulex.h>

void setup()  
{
  int n=1; //set the motor ID
  delay(2000);  //a delay to have time for serial monitor opening
  Serial.begin(115200);    // Open serial communications
  Serial.println("Begin");
  Herkulex.begin(57600,10,11); //open serial with rx=10 and tx=11 
  Herkulex.reboot(n); //reboot 
  delay(500); 
  Herkulex.initialize(); //initialize motors
  Serial.println("Set Led Green");
  Herkulex.setLed(n,LED_GREEN2); //set the led to green
  Serial.print("Status:"); 
  Serial.println(Herkulex.stat(n)); //verify error code
  Herkulex.end();
}

void loop(){
}


