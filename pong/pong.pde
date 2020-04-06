int WIDTH = 720;
int HEIGHT = WIDTH*9/16;
boolean upPressed = false;
boolean downPressed = false;



//Paddle(double x, double y, double speed, double size)
Paddle p1 = new Paddle(0.03,0.5,0.02, 0.2);
Ball b = new Ball(0.5,0.5,2.0,0.05);
Paddle p2 = new Paddle(0.97, 0.5, 0.02, 0.2);

int p1score = 0;
int p2score = 0;

void tick(){
  if(upPressed){
   p1.movePaddle(-1); 
  }
  if(downPressed){
   p1.movePaddle(1); 
  }
  
  if(b.getY()+0.02<p2.getY()){
   p2.movePaddle(-0.8); 
  }
  if(b.getY()-0.02>p2.getY()){
   p2.movePaddle(0.8); 
  }
  b.tick();
  if(b.colliding(p1) != -1){
    b.setAngleBounce((b.colliding(p1)-0.5)/100);
  }
  if(b.colliding(p2) != -1){
    b.setAngleBounce((b.colliding(p2)-0.5)/100);
  }
  
  if(b.getX()+b.getSize()>=1){
   p1score++;
   b.setX(0.5);
   b.setY(0.5);
   
  }
  if(b.getX()<=0){
   p2score++; 
   b.setX(0.5);
   b.setY(0.5);
  }
  
}

void render(){
  background(0);
  p1.render();  
  p2.render();
  b.render();
  textSize(height/10);
  text(p1score, 0.02*width,0.1*height);
  text(p2score, 0.95*width,0.1*height);
}
public void settings() {
  size((int)WIDTH, (int)HEIGHT);
  
}
void setup(){
  surface.setResizable(true);
  background(0);
}


void draw(){
  noStroke();
  tick();
  render();
  fill(255);
}

void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
      upPressed = true;
    }
    if (keyCode == DOWN) {
      downPressed = true;
    }
  }
}

void keyReleased(){
  if (key == CODED) {
    if (keyCode == UP) {
      upPressed = false;
    }
    if (keyCode == DOWN) {
      downPressed = false;
    }
  }
}
