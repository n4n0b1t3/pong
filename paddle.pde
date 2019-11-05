/*
https://www.youtube.com/watch?v=3yoysTRd6Iw&list=PLht-7jHewMA6Wywk_bk0RnD4OvHZ5qL2c&index=5
*/

class Paddle implements Gameobject{
  int width, height, speed, maxSpeed;  
  PVector position = new PVector();
  Game game;  
  color objColor;
 
 Paddle(Game game){
   this.game = game;
   width = game.width / 6;
   height = game.height / 20;
   objColor = color(100,100,100);
   speed = 0;
   maxSpeed = game.width / 40;
   position.set(200, game.height - game.height / 16);
 }

 public float getX(){return position.x;}
 public float getY(){return position.y;} 
 public void setX(float x){position.x = x;}
 public void setY(float y){position.y = y;}
 public PVector getPosition(){return this.position;}
 public int getWidth(){return this.width;}
 public int getHeight(){return this.height;}
 
 
 void display(){
   rectMode(CENTER);
   fill(objColor);
   rect(position.x, position.y, this.width, this.height);
 }
 
 void moveLeft(){
   speed = -maxSpeed;
 }
 
 void moveRight(){
   speed = maxSpeed;
 }
 
 void stop(){
   speed = 0; 
 } 
 
 /*
 update() needs to be called before display(), here all object related changes are set depending on the time passed.
 deltaTime: https://en.wikipedia.org/wiki/Delta_timing
 https://www.youtube.com/watch?v=SGDnbd-f61Y&list=PLht-7jHewMA6Wywk_bk0RnD4OvHZ5qL2c&index=6
 */
 void update(float deltaTime){
   int halfObjWidth = this.width/2;
   position.x +=  speed;
   //keep in game
   if(position.x < 0 + halfObjWidth){ position.x = 0 + halfObjWidth; }
   if(position.x > game.width - halfObjWidth ){ position.x = game.width - halfObjWidth;}
 } 
}
