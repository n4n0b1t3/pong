class Ball{
  int diam, radius;
  color objColor;
  PVector position = new PVector();
  PVector speed = new PVector();
  PShape ballshape;
  Game game;
  
  Ball(Game _g){
   game = _g;
   objColor = color(255, 0,  0);
   //println(game.height);
   diam = game.height / 12;
   radius = diam / 2;
   speed.set(5.0, 5.0);
   position.set(100.0, 100.0);
   ballshape = createShape(ELLIPSE, position.x, position.y, diam, diam);
   ballshape.setStrokeWeight(1.0);
   ballshape.setStroke(color(0,150,55));
   ballshape.setFill(objColor);
  }
  
  void display(){
   shape(ballshape);
  }
  
  void update(float deltaTime){
    position.x += speed.x;
    position.y += speed.y;
    int ballBottom = int(position.y + this.radius);
    int ballLeft = int(position.x - this.radius);
    int ballRight = int(position.x + this.radius);
    int paddleRight = int(game.paddle.position.x + game.paddle.width/2);
    int paddleLeft = int(game.paddle.position.x - game.paddle.width/2);
    int paddleTop = int(game.paddle.position.y - game.paddle.height/2);

    //println("bob: ", ballBottom);
    
    
    // check for wall collision left or right
    if(position.x + radius >= game.width || position.x - radius <= 0){
     speed.x = -speed.x; 
    }
    // check for wall collision top or bottom
    if(position.y + radius >= game.height || position.y - radius <= 0){
     speed.y = -speed.y; 
    }
    
    // check for paddle collision top
    if((ballBottom >= paddleTop) 
        && ballLeft <= paddleRight 
        && ballRight >= paddleLeft){
      speed.y = -speed.y;
      //position.y = position.y - radius;
    }
    
    ballshape.translate(speed.x, speed.y);
  }
}
