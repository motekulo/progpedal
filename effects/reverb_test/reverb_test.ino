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
#include <SerialFlash.h>
//#include <Bounce.h>

// Number of samples in each delay line
//#define CHORUS_DELAY_LENGTH (16*AUDIO_BLOCK_SAMPLES)
#define USAGE 1



const int myInput = AUDIO_INPUT_LINEIN;

// GUItool: begin automatically generated code
AudioInputI2S            i2s2;           //xy=109,477
AudioEffectFreeverb      freeverb1;      //xy=310,470
AudioOutputI2S           i2s1;           //xy=506,469
AudioConnection          patchCord1(i2s2, 0, freeverb1, 0);
AudioConnection          patchCord2(freeverb1, 0, i2s1, 0);
// GUItool: end automatically generated code

AudioControlSGTL5000 audioShield;


///////////////////


// <<<<<<<<<<<<<<>>>>>>>>>>>>>>>>
void setup() {
  
  Serial.begin(9600);
  while (!Serial) ;
  delay(3000);

  AudioMemory(10);

  audioShield.enable();
  audioShield.inputSelect(myInput);
  audioShield.volume(0.65);

  freeverb1.roomsize(0.7);
  freeverb1.damping(0.2);
  

  Serial.println("setup done");
  AudioProcessorUsageMaxReset();
  AudioMemoryUsageMaxReset();
}


// audio volume
int volume = 0;

unsigned long last_time = millis();
void loop() {
  // Volume control
  int n = analogRead(15);
  if (n != volume) {
    volume = n;
    audioShield.volume((float)n / 1023);
  }
if(USAGE == 1) {
  if(millis() - last_time >= 5000) {
    Serial.print("Vol pot: ");
    Serial.println(n);
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
  // update the button
  //b_passthru.update();
 
  // If the passthru button is pushed, switch the chorus on
 // if(b_passthru.fallingEdge()) {
//    l_myEffect.voices(n_chorus);
//    r_myEffect.voices(n_chorus);
 // }
  
  // If passthru button is released, turn on passthru
//  if(b_passthru.risingEdge()) {
//    l_myEffect.voices(0);
//    r_myEffect.voices(0);
//  }

}
