//Created by Zachary Mankowitz from Jan 1, 2021\
int xSize = 1500, ySize = 800; 
boolean projectileLaunched=false;
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
  Projectile test = new Projectile(100,ySize-100,100-mouseX,mouseY-(ySize-100));
}
