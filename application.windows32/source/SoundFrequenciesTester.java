import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.sound.*; 
import java.util.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class SoundFrequenciesTester extends PApplet {



AudioIn in;

public void setup() {
  
  surface.setResizable(true);
  background(255);
    
  // Create the Input stream
  //in = new AudioIn(this, 0);
  println("launching");
  
  
}      
float x = 0;
float freq = 0;
float iterator = 1 ;
//SinOsc sound = new SinOsc(this);
//SawOsc sound = new SawOsc(this);
//SinOsc sound = new SinOsc(this);
//TriOsc sound = new TriOsc(this);
SqrOsc sound = new SqrOsc(this);

boolean keydown=false;
double deb,fin;
public void draw() {
  
  
  background(0);
  rect(mouseX,mouseY,10,10);
  keyPressed();
  //in.play(x);
  String text = "amplitude "+ x+"\nfrequency "+ freq;
  println(text);
  textSize(18);
  text("DOWN/UP:decrease/increase amplitude \nLEFT/RIGHT:decrease/increase frequency",10,100);
  text("Z/X:decrease/inscreas iterator value "+iterator,10,150);
  text(text,10,height/2);
  
  if(keydown){
  println("started");
  keydown=false;
  sound.play(freq,x);
  deb = System.currentTimeMillis()/1000;
  }
  fin = System.currentTimeMillis()/1000;
  println(deb);
  println(fin);
  println(fin-deb);
  
  if(fin-deb > 0.7f ){
  sound.stop(); 
  println("stopped");
  
  }
  
  
}

public void keyPressed(){
  
  if(keyPressed){
    keydown = true;
    if( keyCode == UP){
    println("calling");
      x = (x+0.1f ) % 1;
    }else
    if(keyCode == DOWN){
    x =  (x-0.1f )% 1;
    }else
    if(keyCode == RIGHT){
    freq+=iterator;
    }else
    if(keyCode == LEFT){
    freq-=iterator;
    }else
    if(key == 'x' || key == 'X' ){
    iterator++;
    }else
    if(key == 'Z' || key == 'z'){
    iterator--;
    }else
    if( key == 'q' || key == 'Q' ){
    freq = 261.6256f ;
    }
    if( key == '2' ){
    freq = 277.1826f ;
    }
    if( key == 'w' || key == 'W' ){
    freq = 293.6648f ;
    }
    if( key == '3' ){
    freq = 311.1270f ;
    }
    if( key == 'e' || key == 'E' ){
    freq = 329.6276f ;
    }
    if( key == 'r' || key == 'R' ){
    freq = 349.2282f ;
    }
    if( key == '5' ){
    freq = 369.9944f ;
    }
    if( key == 't' || key == 'T' ){
    freq = 391.9954f ;
    }
    if( key == '6' ){
    freq = 415.3047f ;
    }
    if( key == 'y' || key == 'Y' ){
    freq = 440.0000f ;
    }
    if( key == '7' ){
    freq = 466.1638f ;
    }
    if( key == 'u' || key == 'U' ){
    freq = 493.8833f ;
    }
    if( key == 'i' || key == 'I' ){
    freq = 523.2511f ;
    }
    if( key == '9' ){
    freq = 554.3653f ;
    }
    if( key == 'o' || key == 'O' ){
    freq = 587.3295f ;
    }
    if( key == '0' ){
    freq = 622.2540f ;
    }
    if( key == 'p' || key == 'P' ){
    freq = 659.2551f ;
    }
    if( key == '[' || key == '{' ){
    freq = 698.4565f ;
    }
  }


}
  public void settings() {  size(640, 360); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "SoundFrequenciesTester" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
