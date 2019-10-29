class Game{
  int width, height;
  Ball ball;
  Paddle paddle;
  InputHandler input;

  Game(int _w, int _h){  
   width = _w; // I decided to overwrite here the inbuild width and height, since I am using the class as preselector
   height = _h;
  }
  
  void start(){
   paddle = new Paddle(this);
   ball = new Ball(this);
   input = new InputHandler(this);
  }
  
  void update(){
    paddle.update(deltaTime());  
    ball.update(deltaTime());
  }
  
  void display(){
    paddle.display();
    ball.display();
  }
}
