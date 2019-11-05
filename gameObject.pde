/*
I created an interface here, this helps to pass different objects like Paddle and Ball as a function parameter as one type.
*/

interface Gameobject {
  PVector getPosition();
  float getX();
  float getY();
  void setX(float x);
  void setY(float y);
  int getWidth();
  int getHeight();
}
