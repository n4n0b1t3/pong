class Game{
  int width, height;
  Ball ball;
  Paddle paddle;
  InputHandler input;
  Brick bricks[] = new Brick[10];

  Game(int _w, int _h){  
   width = _w; // I decided to overwrite here the inbuild width and height, since I am using the class as preselector
   height = _h;
  }
  
  void start(){

   paddle = new Paddle(this);
   ball = new Ball(this);
   input = new InputHandler(this);
   PVector brickPosition = new PVector(0, 0);
   for(int i = 0; i < 10; i++) {
     brickPosition.set(62 * i, 100); //<>//
     bricks[i] = new Brick(this, brickPosition);
     println(bricks[i].position.x);
   }   
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
      println(bricks[i].position.x);
      bricks[i].display(); //<>//
    }
  }
}
