import processing.sound.*;
import java.util.*;
AudioIn in;

void setup() {
  size(640, 360);
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
void draw() {
  
  
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
  
  if(fin-deb > 0.7 ){
  sound.stop(); 
  println("stopped");
  
  }
  
  
}

void keyPressed(){
  
  if(keyPressed){
    keydown = true;
    if( keyCode == UP){
    println("calling");
      x = (x+0.1 ) % 1;
    }else
    if(keyCode == DOWN){
    x =  (x-0.1 )% 1;
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
    freq = 261.6256 ;
    }
    if( key == '2' ){
    freq = 277.1826 ;
    }
    if( key == 'w' || key == 'W' ){
    freq = 293.6648 ;
    }
    if( key == '3' ){
    freq = 311.1270 ;
    }
    if( key == 'e' || key == 'E' ){
    freq = 329.6276 ;
    }
    if( key == 'r' || key == 'R' ){
    freq = 349.2282 ;
    }
    if( key == '5' ){
    freq = 369.9944 ;
    }
    if( key == 't' || key == 'T' ){
    freq = 391.9954 ;
    }
    if( key == '6' ){
    freq = 415.3047 ;
    }
    if( key == 'y' || key == 'Y' ){
    freq = 440.0000 ;
    }
    if( key == '7' ){
    freq = 466.1638 ;
    }
    if( key == 'u' || key == 'U' ){
    freq = 493.8833 ;
    }
    if( key == 'i' || key == 'I' ){
    freq = 523.2511 ;
    }
    if( key == '9' ){
    freq = 554.3653 ;
    }
    if( key == 'o' || key == 'O' ){
    freq = 587.3295 ;
    }
    if( key == '0' ){
    freq = 622.2540 ;
    }
    if( key == 'p' || key == 'P' ){
    freq = 659.2551 ;
    }
    if( key == '[' || key == '{' ){
    freq = 698.4565 ;
    }
  }


}
