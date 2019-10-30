class Brick{
  int width, height;
  PVector position;
  Game game;
  PImage brick;

 Brick(Game _g, PVector _pos){
  game = _g;
  position = _pos;
  width = game.width / 12;
  height = game.height / 18;
  brick = loadImage("assets/images/brick.png");
 }
 
 void update(){
   
 }
 
 void display(){
  image(brick, position.x, position.y, this.width, this.height);
 }
}
