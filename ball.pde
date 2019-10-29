class Ball{
  int diam, gameWidth, gameHeight;
  color objColor;
  PVector position = new PVector();
  PVector speed = new PVector();
  PShape ballshape;
  Game game;
  
  Ball(Game _g){
   game = _g;
   objColor = color(255, 0,  0);
   diam = 100;
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
    if(position.x + diam/2 > game.gameWidth || position.x - diam/2 < 0){
     speed.x = -speed.x; 
    }
    if(position.y + diam/2 > game.gameHeight || position.y - diam/2 - 2 < 0){
     speed.y = -speed.y; 
    }
    ballshape.translate(speed.x, speed.y);
  }
}
