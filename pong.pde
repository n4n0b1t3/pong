  
/*
https://www.youtube.com/watch?v=XOit8eK3goM&list=PLht-7jHewMA6Wywk_bk0RnD4OvHZ5qL2c&index=2
*/


//PrintWriter output;
Game game;
float sizeFactor = 0.8;

void settings(){
  int gameHeight = int(displayHeight * sizeFactor); // size of the game depends on the screen height
  int gameWidth = int(gameHeight + gameHeight/3);// width : height = 4:3
  size(gameWidth, gameHeight, P2D);
}

void setup() {
  game = new Game(width, height);
  game.start();
  println("start ------------------------------");
}


//time
int lastMillis = 0;

void draw() {
 
  background(255);
  game.update();
  game.display();
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
int deltaTime(){
  int delta = millis() - lastMillis;
  lastMillis = millis();
  return delta;
}
