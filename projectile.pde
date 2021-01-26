
class Projectile {
  double xPos, yPos, xVel, yVel, size,xInit, yInit = 0;
  boolean isLaunched=false;
  double accel = 200; //measured in pixles/second

  public Projectile(double xPos, double yPos, double xVel, double yVel) {
    this.xPos = xPos;
    this.yPos = yPos;
    xInit = xPos;
    yInit = yPos;
    this.xVel = xVel;
    this.yVel = -yVel;
    System.out.println("New Projectile velocity "+xVel+", "+yVel+" and position "+ xPos+", "+yPos);
  }
  private void update() {
    
    if (isLaunched) {
      yPos = yInit +(yVel*(millis()-timeOffset)/1000)+(.5*accel*pow((millis()-timeOffset)/1000, 2));
      System.out.println(xVel +", "+yVel +", "+ yPos +", "+ xPos +", "+ (millis()-timeOffset)/1000);  
      xPos+=xVel;
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
  private double getXinit() {
    return xInit;
  }
   private double getYinit() {
    return yInit;
  }
   private boolean getLaunchStatus() {
    return isLaunched;
  }
  private void setLaunchStatus(boolean launch){
    isLaunched = launch;
    System.out.println("Status: "+ isLaunched);
  }
}
