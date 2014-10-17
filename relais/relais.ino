void setup() {
  // for debugging
  Serial.begin(9600);
  
  // sensitivity
  pinMode(9, OUTPUT);
  // output timing
  pinMode(10, OUTPUT);
  // ambient light treshold
  pinMode(11, OUTPUT);
  // detection
  pinMode(12, INPUT);
}

void loop() {
  analogWrite(9,3);
  analogWrite(10,50);
  analogWrite(11,(1.8/3.3)*255);
  bool motion_detected = digitalRead(12);
}
