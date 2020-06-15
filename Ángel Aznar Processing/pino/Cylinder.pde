class Cylinder
{
float topRadius; 
float bottomRadius; 
float tall, maxlevel;
int level;
int sides = 16;
PVector position;
PVector rotation;
PImage tronco, hoja,img;
   
  Cylinder(int level, float maxlevel,float _topRadius, float _bottomRadius, float _tall)
  { tronco=loadImage("tronco.jpg");
    hoja=loadImage("hoja.jpg");
    topRadius = _topRadius;
    bottomRadius = _bottomRadius;
    tall = _tall;
    
    this.level=level;
    this.maxlevel=maxlevel;
    
    if(level < (maxlevel)){
      img=tronco;
    }else{
      img=hoja;
    }
  }
  
  void render()
  {
    float angle = 0;
    float angleIncrement = TWO_PI / sides;
    pushMatrix();
    rotateX(PI);
    translate(0, -tall, 0);
    noStroke();
    beginShape(QUAD_STRIP);
    
    texture(img);
    
    for (int i = 0; i < sides + 1; ++i) {
       float xt=topRadius*cos(angle);
      float xb=bottomRadius*cos(angle);
      
      float zt=topRadius*sin(angle);
      
      float zb=bottomRadius*sin(angle);
      float u = img.width / (sides+1) * i;
      
      vertex(xt, 0,zt,u ,0);
      vertex(xb, tall, zb,u,img.height);
      angle += angleIncrement;
    }
     endShape();
  
    
    popMatrix();
  }
}
