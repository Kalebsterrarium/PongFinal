class Startmenu extends rectangles {
  
    Startmenu(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
  }//end circles
  //
  void draw() {
    if(Shape.get(11).GameStart == false && Shape.get(12).GameStart == false) {
    fill(Colour);
    rect(Xposition,Yposition,Width,Height);
    }
  }//end draw
  //
   color colours() {
    color c = 3;
    return c;
  }
  //
  void updateSetup(float vari1, float vari2, float vari3,float vari4, float vari5, float vari6,float vari7, float vari8,float vari9, float vari10, float vari11) {
    
  }//end updateSetup
  //
  void keyPressed() {
    
  }// keyPressed
  //
  void keyReleased() {
    
  }//end keyReleased
  //
  void mousePressed() {
    
  }//end mousePressed
  
  
  
  
  
  
  
}//end Startmenu class








float MenuX,MenuY,MenuWidth,MenuHeight;

void StartMenu() {
 
  fill(Grosscolour1);
  rect(PlayerX1,PlayerY1,PlayerWidth1,PlayerHeight1);
  fill(Grosscolour2);
  rect(PlayerX2,PlayerY2,PlayerWidth2,PlayerHeight2);
  textSize(60);
  fill(PT1);
  text("Single Player",PlayerX1,PlayerY1,PlayerWidth1,PlayerHeight1);
 
 
}//end StartMenu
