//Created by Zachary Mankowitz from Jan 1, 2021\
int xSize = 1500, ySize = 800; 
float timeOffset=0;
boolean projectileLaunched=false;
Projectile test = new Projectile(100,ySize-100,0,0);
void setup(){
  size(1500,800);
  
}

void draw(){
  background(255,255,255);
  fill(0,0,0);
  rect(100,ySize-100,25,150);
  if(!projectileLaunched)line(112,ySize-100,mouseX,mouseY);
  
  test.update();
}

void mouseClicked(){
  projectileLaunched=true;
  test.setXvel(norm(100-mouseX,0,100));
  test.setYvel(norm((ySize-100)-mouseY,0,100));
  
  test.setXvel((100-mouseX)/10);
  test.setYvel(((ySize-100)-mouseY)*5);
  
  timeOffset = millis();
  System.out.println("New Projectile velocity "+test.xVel+", "+test.yVel);
}
