public class Sprite{
  PImage image;
  float center_x, center_y;
  float change_x, change_y;
  float w, h;
  
  // inititalize variables in this constructor
  public Sprite(String filename, float scale, float x, float y){
    image=loadImage(filename);
    w=image.width*scale;
    h=image.height*scale;
    center_x=x;
    center_y=y;
    change_x=0;
    change_y=0;
  }
  
  public Sprite(PImage img, float scale){
    image=img;
    w=image.width*scale;
    h=image.height*scale;
    center_x=0;
    center_y=0;
    change_x=0;
    change_y=0;
  }
  
  public Sprite(String filename, float scale){
    this(filename, scale, 0, 0);
  }
  
  // use image(image_file, x, y, width_image, height_image) to draw image.
  public void display(){
   image(image,center_x,center_y,w,h);
  }
  
  // update position by adding velocity in each direction
  public void update(){
   center_x+=change_x;
   center_y+=change_y;
  }
  void setLeft(float left){
    center_x=left+w/2;
  }
  public float getLeft(){
    return center_x/2 - w/2;
  }
  void setRight(float right){
    center_x=right-w/2;
  }
  public float getRight(){
    return center_x/2 + w/2;
  }
  void setTop(float top){
    center_y=top + h/2;
  }
  public float getTop(){
    return center_y - h/2;
  }
  void setBottom(float bottom){
    center_y=bottom - h/2;
  }
  public float getBottom(){
    return center_y + h/2;
  } 
}
