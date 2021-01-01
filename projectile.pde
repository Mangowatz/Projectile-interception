
class Projectile{
  int xPos,yPos,xVel,yVel,size = 0;
  double accel = 9.78;
  
  public Projectile(int xPos, int yPos, int xVel, int yVel){
    this.xPos = xPos;
    this.yPos = yPos;
    this.xVel = xVel;
    this.yVel = yVel;
    System.out.println("New Projectile velocity "+xVel+", "+yVel+" and position "+ xPos+", "+yPos);
  }
  private void update(){
    xPos += xVel;
    yPos+=yVel;
    circle(xPos,yPos,20);
  }
}
