#include <Herkulex.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <stdio.h>

#define ID 0xfd //Motor ID
#define MAXPOS 159 // 125
#define MINPOS -159

void setup()
{
  /* Baud Rate 115200 */
  Serial.begin(115200);
  /* Initialize Herkulex Serial interface */
  Herkulex.beginSerial1(115200); //open serial port 1 
  Herkulex.reboot(ID); //reboot first motor
  delay(500); 
  Herkulex.initialize(); //initialize motors
  delay(200);
  Herkulex.torqueON(ID);
  delay(200);
  Herkulex.setOverloadPWMThreshold(ID);
  delay(200);
  Herkulex.moveOneAngle(ID, MINPOS, 1500, LED_BLUE);
}

void loop()
{
  /*Serial*/
  char buffer[256];
  char incomingByte;
  char *data = buffer;
  char *str;
  float rx[4];
  static int i,counter = 0;
  
  /*Read from serial*/
  while (Serial.available() > 0)
  {
    incomingByte = Serial.read();
    /* New data */
    if (incomingByte == '\n')
    {
      buffer[counter]=0;
      if (buffer[0] == 'P' && buffer[1] == 'S')
      {
        strncpy(data, buffer+2, 100);
        i=0;
        while ((str = strtok_r(data, ";" , &data)))
        {
          rx[i] = atof(str);
          i++;
        }
        counter = 0;
        /* Move servo with Position Control */
        servoMove(rx[0] + MINPOS);      
      }
      else if (buffer[0] == 'F' && buffer[1] == 'M')
      {
        strncpy(data, buffer+2, 100);
        i=0;
        while ((str = strtok_r(data, ";" , &data)))
        {
          rx[i] = atof(str);
          i++;
        }
        counter = 0;
        /* Force Measure */
        ForceMeasure();
      }
    }
    /* Fill the buffer with incoming data */
    else 
    {
      buffer[counter] = incomingByte;
      counter ++;
    }
  }
}
void ForceMeasure()
{
  float q;
  for(q= 0; q <= 200; q = q+5)
  {
    servoMove(q + MINPOS);
    delay(6000);
  }
}

/* Posotion Control */
void servoMove(float final_pos)
{ 
  if (final_pos >= MINPOS && final_pos <=  MAXPOS)
  {
    Herkulex.moveOneAngle(ID, final_pos, 1500, LED_BLUE);
    delay(1500);
    float angle = Herkulex.getAngle(ID);
    /* Serial print to Host-PC */
    Serial.print(final_pos);
    Serial.print("\t");
    Serial.println(angle);
  }
}
