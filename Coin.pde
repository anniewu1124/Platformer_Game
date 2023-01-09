public class Coin extends AnimatedSprite{
  public Coin(PImage img, float scale){
    super (img, scale);
    standNeutral = new PImage[4];
    standNeutral[0] = loadImage("image/gold1.png");
    standNeutral[1] = loadImage("image/gold2.png");
    standNeutral[2] = loadImage("image/gold3.png");
    standNeutral[3] = loadImage("image/gold4.png");
    currentImages= standNeutral;
  }
}
