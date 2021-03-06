PVector[] vertices = new PVector[24];
PFont font;

Cube stage;
Ball ball;
Instructions instructions = new Instructions();

// keys
// a = angled view
// b = borders
// c = curve
boolean a = false, b = false, c = false, g = false, z = true;

void setup() {
  // set window
  size(1200, 700, P3D);
  float w = width*2, h = height*2, d = 2000;
  
  // set stage and ball
  stage = new Cube(new PVector(w,h,d));
  ball = new Ball(new PVector(w,h,d));
  
  font = loadFont("HelveticaNeue-UltraLight-16.vlw");   
  textFont(font,16); 
  textMode(SCREEN);
}

void draw() {
  
  // Center in display window
  translate(width/2, height/2, -1500);
  // if the user turned on the angled view
  if(a) {
    rotateX(radians(-30));
  }
  
  background(0);
  lights();
  noFill();
  smooth();
  // if the user turned on borders
  if(b) {
    stroke(255);
  }
  
  stage.create();
  ball.create();
  
  if(z) {
    fill(255, 255, 255, 100);
    instructions.loadInstructions();
  }
  
  if(keyPressed) {
    if(key == 'a' || key == 'A') {
      a = (a) ? false : true;
    }
    
    if(key == 'b' || key == 'B') {
      b = (b) ? false : true;
    }
    
    if(key == 'c' || key == 'C') {
      c = (c) ? false : true;
    }
    
    if(key == 'g' || key == 'G') {
      g = (g) ? false : true;
    }
    
    if(key == 'z') {
      z = (z) ? false : true;
    }
  }
  
}


