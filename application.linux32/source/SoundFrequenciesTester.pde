import processing.sound.*;
AudioIn in;

void setup() {
  size(640, 360);
  background(255);
    
  // Create the Input stream
  in = new AudioIn(this, 0);
  println("launching");
  
  
}      
float x = 0;
int freq = 0;
float iterator = 1 ;
SinOsc sound = new SinOsc(this);
void draw() {
  background(0);
  rect(mouseX,mouseY,10,10);
  keyPressed();
  in.play(x);
  String text = "amplitude "+ x+"\nfrequency "+ freq;
  println(text);
  textSize(18);
  text("DOWN/UP:decrease/increase amplitude \nLEFT/RIGHT:decrease/increase frequency",10,100);
  text("Z/X:decrease/inscreas iterator value "+iterator,10,150);
  text(text,10,height/2);
  sound.play(freq,x);
  
}

void keyPressed(){
  
  if(keyPressed){
    if( keyCode == UP){
    println("calling");
      x = (x+0.1 ) % 1;
    }
    if(keyCode == DOWN){
    x =  (x-0.1 )% 1;
    }
    if(keyCode == RIGHT){
    freq+=iterator;
    }
    if(keyCode == LEFT){
    freq-=iterator;
    }
    if(keyCode == X){
    iterator++;
    }
    if(keyCode == Z){
    iterator--;
    }
  
  }


}
