class Game{
  int width, height, brickWidth, brickHeight, bricksPerRow;
  Ball ball;
  Paddle paddle;
  InputHandler input;
  Brick bricks[];

  Game(int _w, int _h){  
   width = _w; // I decided to overwrite here the inbuild width and height, since I am using the class as preselector
   height = _h;
   bricksPerRow = 12;
   brickWidth = width / bricksPerRow;
   brickHeight = brickWidth / 3; //<>//
  }
  
  void start(){
   bricks = buildLevel(this, level1);
   paddle = new Paddle(this);
   ball = new Ball(this);
   input = new InputHandler(this);
   
     
  }
  
  void update(){
    paddle.update(deltaTime());  
    ball.update(deltaTime());
    for(int i = 0; i < bricks.length; i++){
      bricks[i].update();
    }
  }
  
  void display(){
    paddle.display();
    ball.display();    
    for(int i = 0; i < bricks.length; i++){
      bricks[i].display();
    }
  }
}
