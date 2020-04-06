int WIDTH = 720;
int HEIGHT = WIDTH*9/16;
boolean upPressed = false;
boolean downPressed = false;

Paddle p = new Paddle(20,20,HEIGHT/75, HEIGHT/10);
Ball b = new Ball(100,100,HEIGHT/50,HEIGHT/40);

void tick(){
  p.setSpeed(height/50);
  if(upPressed){
   p.movePaddle(-1); 
  }
  if(downPressed){
   p.movePaddle(1); 
  }
  b.tick();
}

void render(){
  background(0);
  p.setSize(height/10);
  b.setSize(height/30);
  p.render();  
  b.render();
}
public void settings() {
  size((int)WIDTH, (int)HEIGHT);
  
}
void setup(){
  surface.setResizable(true);
  background(0);
}


void draw(){
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
