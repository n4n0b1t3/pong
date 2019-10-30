class Brick{
  int width, height;
  PVector position = new PVector(0,0);
  Game game;
  PImage brick;

 Brick(Game _g, int _x, int _y){
  game = _g;
  position.x = _x;
  position.y = _y;
  width = game.brickWidth;
  height = game.brickHeight;
  brick = loadImage("assets/images/brick.png");
 }
 
 void update(){
   
 }
 
 void display(){
  image(brick, position.x, position.y, this.width, this.height);
 }
}
