class Tree
{
  float treeSize;
  float maxLevel; 
  float rotationX, rotationZ;
  PVector initPos;
  Cylinder c;
  ArrayList rotX = new ArrayList();
  ArrayList rotZ = new ArrayList();
 
  ArrayList RB = new ArrayList();
  
  Tree(float _treeSize, float _maxLevel, PVector _initPos, int rango_giro,int multiplicador_hojas)
  {
    
    treeSize = _treeSize;
    maxLevel = _maxLevel;
    initPos = _initPos;
    for (int i = 0; i < maxLevel*multiplicador_hojas; i++){
      float rX = random(-rango_giro, rango_giro);
      float rZ = random(-rango_giro, rango_giro);
      
        rotX.add(rX);
        rotZ.add(rZ);
      
     ArrayList aux= new ArrayList();
      for (int j = 0; j < maxLevel*multiplicador_hojas; j++){
        
        
        aux.add(random(-treeSize * pow(0.80, i))+(-treeSize * pow(0.80, i))/4);
      }
     RB.add(aux); 
     
    }
  }
  
  void drawTree() 
  { 
    pushMatrix(); 
    translate(initPos.x, initPos.y, initPos.z);
    drawBranch(1,-treeSize * pow(0.80, 1));   
    popMatrix(); 
  } 

  void drawBranch(int level, float branchSize) 
  { 
    if (level > maxLevel) return; 
    fill(lerpColor(#8b4513,#009C22,level/maxLevel));
    
    if(level==1){
    c = new Cylinder(level, maxLevel,treeSize/4.1 * pow(0.4, level), treeSize/2.5  * pow(0.4, level), branchSize);
    }else{
    c = new Cylinder(level, maxLevel,treeSize/4.1 * pow(0.4, level), treeSize/1.60 * pow(0.4, level), branchSize);
    }
    c.render();    
    translate(0,branchSize,0);
    if(level== maxLevel-1){
      
      for(int i = 0; i < maxLevel*multiplicador_hojas; i++){
      rotationX = (Float) rotX.get(i);
      rotationZ = (Float) rotZ.get(i);
      pushMatrix();
      rotateX(radians(rotationX)); 
      rotateZ(radians(rotationZ)); 
      ArrayList aux = (ArrayList) RB.get(level);
      drawBranch(level + 1, (float)aux.get(i)); 
      popMatrix();
      }  
    }else{
    for(int i = 0; i < maxLevel; i++){
    rotationX = (Float) rotX.get(i);
    rotationZ = (Float) rotZ.get(i);
    pushMatrix();
      rotateX(radians(rotationX)); 
      rotateZ(radians(rotationZ)); 
      ArrayList aux = (ArrayList) RB.get(level);
      drawBranch(level + 1, (float)aux.get(i)); 
    popMatrix();
    }  }
  }


}
