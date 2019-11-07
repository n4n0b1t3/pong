class Brick implements Gameobject{
  int width, height;
  PVector position = new PVector();
  Game game;
  PImage brick;

 Brick(Game game, int x, int y){
  this.game = game;
  position.x = x;
  position.y = y;
  width = game.brickWidth;
  height = game.brickHeight;
  brick = loadImage("assets/images/brick.png");
 }
 
 public float getX(){return position.x;}
 public float getY(){return position.y;} 
 public void setX(float x){position.x = x;}
 public void setY(float y){position.y = y;}
 public PVector getPosition(){return this.position;}
 public int getWidth(){return this.width;}
 public int getHeight(){return this.height;}

 
 void update(){
   if(detectCollision(game.ball, this)){
     game.ball.setSpeedY(-game.ball.getSpeedY());
     this.brick = loadImage("assets/images/brick_touched.png");
     //noLoop();
   }
 }
 
 void display(){
   imageMode(CENTER);
   image(brick, position.x, position.y, this.width, this.height);
 }
}
