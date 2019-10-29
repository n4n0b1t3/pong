/*
https://www.youtube.com/watch?v=3yoysTRd6Iw&list=PLht-7jHewMA6Wywk_bk0RnD4OvHZ5qL2c&index=5
*/

class Paddle{
  int width, height, gameWidth, gameHeight, speed, maxSpeed;  
  color objColor;
  PVector position = new PVector();
  Game game;
 
 Paddle(Game _g){
   game = _g;
   width = game.width / 6;
   height = game.height / 20;
   objColor = color(100,100,50);
   speed = 0;
   maxSpeed = game.width / 40;
   position.set(200, game.height - game.height / 16);
 }
 
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
 }  //<>//
}
