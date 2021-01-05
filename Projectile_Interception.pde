//Created by Zachary Mankowitz from Jan 1, 2021
int xSize = 1500, ySize = 800; 
float timeOffset=10000;
boolean projectileLaunched=false, interceptLaunched=false;
Projectile rocket = new Projectile(110, ySize-100, 0, 0);
Projectile intercept = new Projectile(750, 750, 0, 0);
void setup() {
  size(1500, 800);
}

void draw() {
  background(255, 255, 255);
  fill(0, 255, 0);
  rect(100, ySize-85, 25, 100);

  if (!projectileLaunched)line(rocket.getXpos(), rocket.getYpos(), mouseX, mouseY);
  if (millis()-timeOffset>=1000&&!interceptLaunched) {
    background(44, 44, 70);
    System.out.println("fire");
    interceptLaunched=true;
    intercept.setXvel(rocket.getXvel() + (rocket.getXinit()-intercept.getXinit())/((millis()+timeOffset+1000)/1000)/10);//v0x1 + (s0x1-s0x2)/t = v0x2
    intercept.setYvel(rocket.getYvel() - (rocket.getYinit()-intercept.getYinit())/((millis()+timeOffset+1000)/1000));//v0x1 + (s0x1-s0x2)/t = v0x2
    System.out.println("Set Intercept velocity to "+intercept.xVel+", "+intercept.yVel);
  }
  rocket.update();
  if (interceptLaunched)intercept.update();
  fill(255, 0, 0);
  circle(750, 800, 40);
}

void mouseClicked() {
  projectileLaunched=true;
  rocket.setXvel((100-mouseX)/10);
  rocket.setYvel(((ySize-100)-mouseY)*5);
  timeOffset = millis();
  System.out.println("Set Projectile velocity to "+rocket.xVel+", "+rocket.yVel);
}
