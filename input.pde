class InputHandler{

 String output = "";
 Game game;
 
 // named objects passed to constructor are available in the whole class
 InputHandler(Game _g){
   game = _g;
 }
 
 void keyDown(){
   switch(key){
    case 'a':
      game.paddle.moveLeft();
      break;
    case 'd':
      game.paddle.moveRight();
      break;
    case 'x':
      exit();
      break;
   }
 }
 
 void keyUp(){
   switch(key){
    case 'a':
      if(game.paddle.speed < 0){
        game.paddle.stop();
      }
      break;
    case 'd':
      if(game.paddle.speed > 0){
        game.paddle.stop();
      }
      break;
   }
 }
 
 void display(){
  textSize(60);
  text(key, 20, 200); 
 }
}
