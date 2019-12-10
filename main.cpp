#include <Arduino.h>


void setup() {
  
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(9600);
  
}


void loop() {

  int sensorValue = analogRead(A0);
  float voltage = sensorValue * (5.0 / 1023.0);
  Serial.print("A0 never before seen Voltage: --> ");
  Serial.println(voltage);
  
  digitalWrite(LED_BUILTIN, HIGH);   
  delay(100);                      
  digitalWrite(LED_BUILTIN, LOW);    
  delay(100);                    

  digitalWrite(LED_BUILTIN, HIGH);   
  delay(100);                      
  digitalWrite(LED_BUILTIN, LOW);    
  delay(3000);                     
}
