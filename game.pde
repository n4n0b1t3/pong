class Game{
  int gameWidth, gameHeight;
  Ball ball;
  Paddle paddle;
  InputHandler input;

  Game(int _w, int _h){  
   gameWidth = _w;
   gameHeight = _h;
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
