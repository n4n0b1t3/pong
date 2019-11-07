boolean detectCollision(Ball ball, final Gameobject go){
    
    int ballBottom = int(ball.position.y + ball.radius);
    int ballTop = int(ball.position.y - ball.radius);
    int ballLeft = int(ball.position.x - ball.radius);
    int ballRight = int(ball.position.x + ball.radius);
    int objBottom = int(go.getY() + go.getHeight()/2);
    int objTop = int(go.getY() - go.getHeight()/2);
    int objLeft = int(go.getX() - go.getWidth()/2);
    int objRight = int(go.getX() + go.getWidth()/2); //<>//
    
    
    if(ballBottom >= objTop &&
       ballTop <= objBottom &&
       ballLeft <= objRight &&
       ballRight >= objLeft
    ){
/*
*/
     println("obj:", go.getClass().getSimpleName());
     println("bB:", ballBottom, ", bT:", ballTop, ", bL:", ballLeft, ", bR:", ballRight);
     println("oB:", objBottom, ", oT:", objTop, ", oL:", objLeft, ", oR:", objRight);
     println("...");

     return true;
    }
    
    return false; 
}
