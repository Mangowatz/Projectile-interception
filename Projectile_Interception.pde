//Created by Zachary Mankowitz from Jan 1, 2021\
int xSize = 1500, ySize = 800; 
float timeOffset=0;
boolean projectileLaunched=false,interceptLaunched=false;
Projectile rocket = new Projectile(110, ySize-100, 0, 0);
Projectile intercept = new Projectile(750,750,0,0);
void setup() {
  size(1500, 800);
  intercept.update();
}

void draw() {
  background(255, 255, 255);
  fill(0, 255, 0);
  rect(100, ySize-85, 25, 100);
  
  if (!projectileLaunched)line(rocket.getXpos(), rocket.getYpos(), mouseX, mouseY);

  rocket.update();
  
  if(interceptLaunched)intercept.update();
  fill(255,0,0);
  circle(750,800,40);
}

void mouseClicked() {
  projectileLaunched=true;
  rocket.setXvel((100-mouseX)/10);
  rocket.setYvel(((ySize-100)-mouseY)*5);
  timeOffset = millis();
  System.out.println("Set Projectile velocity to "+rocket.xVel+", "+rocket.yVel);
}
