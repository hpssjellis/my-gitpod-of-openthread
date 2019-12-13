/*
  blink-with-serial

  Blinks the on board LED and tests serial output
  
  By Jeremy Ellis
  http://www.rocksetta.com
  Twitter @rocksetta
*/

#include <Arduino.h>

// Done once
void setup() {
  
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(9600);
  
}


// Loops forever
void loop() {
  
  int sensorValue = analogRead(A0);  // A0 doesn't need to be connected
  float voltage = sensorValue * (5.0 / 1023.0);
  
  Serial.print("Serial proof showing A0 as a voltage: --> ");
  Serial.println(voltage);
  
  // Now blink the built in LED
  digitalWrite(LED_BUILTIN, HIGH);   
  delay(300);                      
  digitalWrite(LED_BUILTIN, LOW);    
  delay(300);                    

  digitalWrite(LED_BUILTIN, HIGH);   
  delay(300);                      
  digitalWrite(LED_BUILTIN, LOW);   
  delay(300);                      
  
  delay(3000);    // wait 3 seconds                 
}
