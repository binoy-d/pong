


class Paddle{
 double x;
 double y;
 double speed;
 double size;
 
 Paddle(double x, double y, double speed, double size){
   this.x = x;
   this.y = y;
   this.speed = speed;
   this.size = size;
 }
 
 public double getX(){
   return x; 
 }
 public double getY(){
   return y; 
 }
 public double getSpeed(){
   return speed;
 }
 public void setSpeed(double speed){
   this.speed = speed;
 }
 public double getWidth(){
   return this.size/8;
 }
 public double getHeight(){
  return this.size; 
 }
 public void setSize(double size){
   this.size = size; 
 }
 
 public void movePaddle(double dy){
   this.y+=dy*speed;
 }
 
 
 public void render(){
  fill(255);
  rect((float)x*width,(float)y*height,(float)(size/8)*width, (float)size*height); 
 }
  
}
