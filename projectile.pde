
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
      yPos = ySize-100 +(yVel*(millis()-timeOffset)/1000)+(.5*accel*pow((millis()-timeOffset)/1000, 2));
      System.out.println(yVel +", "+ yPos +", "+ xPos +", "+ (millis()-timeOffset)/1000);
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
}
