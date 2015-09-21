#include <Herkulex.h>

void setup()  
{
  int n=1; //set the motor ID
  delay(2000);  //a delay to have time for serial monitor opening
  Serial.begin(115200);    // Open serial communications
  Serial.println("Begin");
  Herkulex.beginSerial1(115200); //open serial port 1 
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


