class Ball implements Gameobject{ 
  private int width, height, diam, radius;
  color objColor;
  PVector position = new PVector();
  PVector speed = new PVector();
  PShape ballshape;
  Game game;
  
  Ball(Game game){
   this.game = game;
   objColor = color(50, 50, 50);
   //println(game.height);
   diam = game.height / 12;
   this.width = diam;
   this.height = diam; 
   radius = diam / 2;
   speed.set(5.0, 5.0);
   position.set(100.0, 200.0);
   ballshape = createShape(ELLIPSE, position.x, position.y, diam, diam);
   ballshape.setStrokeWeight(1.0);
   ballshape.setStroke(color(0,150,55));
   ballshape.setFill(objColor);
  }

  public float getSpeedX(){ return speed.x;}
  public void setSpeedX(float value){speed.x = value;}
  public float getSpeedY(){ return speed.y;}
  public void setSpeedY(float value){speed.y = value;}

  public float getX(){return position.x;}
  public float getY(){return position.y;} 
  public void setX(float x){position.x = x;}
  public void setY(float y){position.y = y;}
  public PVector getPosition(){return this.position;}
  public int getWidth(){return this.width;}
  public int getHeight(){return this.height;}  
  
  void display(){
   shape(ballshape);
  }
  
  void update(float deltaTime){
    position.x += speed.x;
    position.y += speed.y;
    
    // check for wall collision left or right
    if(getX() + radius >= game.width || getX() - radius <= 0){
     speed.x = -speed.x; 
    }
    
    
    game.tracking.write("height: " + height + ", game.height:"+ game.height +", y:"+ getY() + " and radius:" + radius + " speed.y: " + speed.y);
    
    
    // check for wall collision bottom
    if(getY() + radius >= game.height){
     println("touched bottom with y:"+ getY() + " and radius:" + radius + " speed.y: " + speed.y);
    }

    // check for wall collision top or bottom
    if(getY() + radius >= game.height || getY() - radius <= 0){
     speed.y = -speed.y; 
    }
    
    if(detectCollision(this, game.paddle)) speed.y = -speed.y;
    
    ballshape.translate(speed.x, speed.y);
  }
}
