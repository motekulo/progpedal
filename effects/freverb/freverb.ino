/*
VERSION 2 - use modified library which has been changed to handle
            one channel instead of two
140529
Proc = 7 (7),  Mem = 4 (4)
  2a
  - default at startup is to have passthru ON and the button
    switches the chorus effect in.
  
previous performance measures were PROC/MEM 9/4
From: http://www.cs.cf.ac.uk/Dave/CM0268/PDF/10_CM0268_Audio_FX.pdf
about Comb filter effects
Effect      Delay range (ms)    Modulation
Resonator      0 - 20            None
Flanger        0 - 15            Sinusoidal (approx 1Hz)
Chorus        25 - 50            None
Echo            >50              None
FMI:
The audio board uses the following pins.
 6 - MEMCS
 7 - MOSI
 9 - BCLK
10 - SDCS
11 - MCLK
12 - MISO
13 - RX
14 - SCLK
15 - VOL
18 - SDA
19 - SCL
22 - TX
23 - LRCLK
AudioProcessorUsage()
AudioProcessorUsageMax()
AudioProcessorUsageMaxReset()
AudioMemoryUsage()
AudioMemoryUsageMax()
AudioMemoryUsageMaxReset()
The CPU usage is an integer from 0 to 100, and the memory is from 0 to however
many blocks you provided with AudioMemory().
*/

#include <Audio.h>
#include <Wire.h>
#include <SD.h>
#include <SPI.h>
//#include <SerialFlash.h>

#define USAGE 1

const int myInput = AUDIO_INPUT_LINEIN;

// GUItool: begin automatically generated code
AudioInputI2S            i2s2;           //xy=130,382
AudioEffectFreeverb      freeverb1;      //xy=308,467
AudioMixer4              mixer1;         //xy=489,395
AudioOutputI2S           i2s1;           //xy=649,468
AudioConnection          patchCord1(i2s2, 0, mixer1, 0);
AudioConnection          patchCord2(i2s2, 0, freeverb1, 0);
AudioConnection          patchCord3(freeverb1, 0, mixer1, 1);
AudioConnection          patchCord4(mixer1, 0, i2s1, 0);

AudioControlSGTL5000 audioShield;

// GUItool: end automatically generated code

float wetMix = 0.5;
float dryMix = 1 - wetMix;
float roomSize = 0.7;
float dampingVal = 0.2;

unsigned long last_time = millis();

void setup() {
  
  Serial.begin(9600);
  while (!Serial) ;
  delay(3000);

  AudioMemory(10);

  audioShield.enable();
  audioShield.inputSelect(myInput);
  audioShield.volume(0.65);

  freeverb1.roomsize(roomSize);
  freeverb1.damping(dampingVal);

  mixer1.gain(0, 0.5);
  mixer1.gain(1, 0.5);

  Serial.println("setup done");
  AudioProcessorUsageMaxReset();
  AudioMemoryUsageMaxReset();
}


void loop() {
  // Wet/ dry mix
  
  int n = analogRead(35);
  wetMix = (float)n/1023;  
  dryMix = 1 - wetMix;
  mixer1.gain(0, wetMix);
  mixer1.gain(1, dryMix);
  
  n = analogRead(34);
  roomSize = (float)n/1023;
  freeverb1.roomsize(roomSize);

  n = analogRead(33);
  dampingVal = (float)n/1023;
  freeverb1.damping(dampingVal);

  
  if(USAGE == 1) {
    if(millis() - last_time >= 5000) {
      Serial.print("pin 35: ");
      Serial.println(n);
      Serial.print("wet: ");
      Serial.println(wetMix);
      Serial.print("dry: ");
      Serial.println(dryMix);
      Serial.print("size: ");
      Serial.println(roomSize);
      Serial.print("damping: ");
      Serial.println(dampingVal);
      
      Serial.print("Proc = ");
      Serial.print(AudioProcessorUsage());
      Serial.print(" (");    
      Serial.print(AudioProcessorUsageMax());
      Serial.print("),  Mem = ");
      Serial.print(AudioMemoryUsage());
      Serial.print(" (");    
      Serial.print(AudioMemoryUsageMax());
      Serial.println(")");
      last_time = millis();
    }
  }

}
