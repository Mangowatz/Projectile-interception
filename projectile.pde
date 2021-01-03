
class Projectile {
  double xPos, yPos, xVel, yVel, size = 0;

  double accel = 200; //measured in pixles/second

  public Projectile(double xPos, double yPos, double xVel, double yVel) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.xVel = xVel;
    this.yVel = -yVel;
    System.out.println("New Projectile velocity "+xVel+", "+yVel+" and position "+ xPos+", "+yPos);
  }
  private void update() {
    xPos+=xVel;
    // yPos=ySize-100;
    if (projectileLaunched) {
      rocket.yPos = ySize-100 +(yVel*(millis()-timeOffset)/1000)+(.5*accel*pow((millis()-timeOffset)/1000, 2));
      System.out.println(yVel +", "+ yPos +", "+ xPos +", "+ (millis()-timeOffset)/1000);
    
    if(millis()>=(timeOffset+1000)){
      System.out.println("fire");
      intercept.setXvel(rocket.getXvel() + (110-750)/((millis()-timeOffset)/1000)/10);//v0x1 + (s0x1-s0x2)/t = v0x2
      intercept.setYvel(rocket.getYvel() - (110-750)/((millis()-timeOffset)/1000)/10);//v0x1 + (s0x1-s0x2)/t = v0x2
      intercept.xPos+=intercept.xVel;
      intercept.yPos+=intercept.yVel;
  }
    }
    circle((int)xPos, (int)yPos, 20);
  }
  private void setXvel(double xVel) {
    this.xVel = xVel;
  }
  private void setYvel(double yVel) {
    this.yVel = yVel;
  }
  private int getYpos() {
    return (int)yPos;
  }
  private int getXpos() {
    return (int)xPos;
  }
   private double getXvel() {
    return xVel;
  }
   private double getYvel() {
    return yVel;
  }
}
