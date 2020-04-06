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
   this.dx = random(-0.01,0.01);
   this.dy = random(-0.01,0.01);
   this.speed = speed;
   this.size = size;
 }
 
 public double getX(){
   return x; 
 }
 public double getY(){
   return y; 
 }
 public void setX(double x){
  this.x = x; 
 }
 public void setY(double y){
  this.y = y; 
 }
 
 
 public double getSpeed(){
   return speed;
 }
 public void setSpeed(double speed){
   this.speed = speed;
 }
 public double getSize(){
   return this.size;
 }
 public void setSize(double size){
   this.size = size; 
 }
 
 public void setAngleBounce(double angle){
   this.dx = -this.dx;
   this.dy = angle+random(-0.005,0.005);
 }
 public void tick(){
  this.x+=this.dx*speed;
  this.y+=this.dy*speed;
  if(this.y<=0 || this.y+this.size>=1.0){
    
   this.dy = -this.dy; 
  }
  if(this.x<=0 || this.x+this.size>=1.0){
   this.dx = -this.dx; 
  } 
 }
 
 
 
 public double colliding(Paddle p){
   double ret = -1;
   if(
   this.x < p.x + p.getWidth() &&
   this.x + this.size > p.x &&
   this.y < p.y + p.getHeight() &&
   this.y + this.size > p.y){
    ret = (this.y-p.y)/p.getHeight(); 
   }
   return ret;
 }
 
 
 public void render(){
  fill(255);
  rect((float)x*width,(float)y*height,(float)size*height, (float)size*height); 
 }
  
}
