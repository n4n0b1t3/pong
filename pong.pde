  
/*
https://www.youtube.com/watch?v=XOit8eK3goM&list=PLht-7jHewMA6Wywk_bk0RnD4OvHZ5qL2c&index=2
*/


//PrintWriter output; //<>//
PImage brick;
Game game;

void setup() {
  size(1600, 1200, P2D);
  brick = loadImage("assets/images/brick.png");
  game = new Game(width, height);
  game.start();
}


//time
int lastMillis = 0;

void draw() {
  background(255);
  game.update();
  game.display(); //<>//
  image(brick, 50,50, 140, 60);
}

void keyPressed(){
  game.input.keyDown();
}

void keyReleased(){
  game.input.keyUp(); 
}

/* time in milliseconds between each frames 
https://forum.processing.org/two/discussion/10289/simple-physics
*/
int deltaTime(){ //<>//
  int delta = millis() - lastMillis; //<>//
  lastMillis = millis();
  return delta;
}
