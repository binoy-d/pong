class Ball{
 double x;
 double y;
 double dx;
 double dy;
 double speed;
 double size;
 
 Ball(double x, double y, double speed, double size){
   this.x = x;
   this.y = y;
   this.dx = random(-1,1);
   this.dy = random(-1,1);
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
   return this.size/3;
 }
 public void setSize(double size){
   this.size = size; 
 }
 
 public void movePaddle(double dy){
   this.y+=dy*speed;
 }
 public void tick(){
  this.x+=this.dx*speed;
  this.y+=this.dy*speed;
  if(this.y<=0 || this.y+this.size>=height){
   this.dy = -this.dy; 
  }
  if(this.x<=0 || this.x+this.size>=width){
   this.dx = -this.dx; 
  }
  
  
  
  
  
 }
 
 
 
 
 public void render(){
  fill(255);
  rect((float)x,(float)y,(float)size, (float)size); 
 }
  
}
