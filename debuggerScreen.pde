class DebuggerScreen{
 String text;
 PFont font;
 PVector position = new PVector();
 
 DebuggerScreen(int x, int y){
  position.set(x,y);
  font = createFont("Arial",16,true);
  textFont(font);
  fill(0);
 }
 
 public void write(String txt){
  text(txt, position.x, position.y);
 }
  
}
