class returnmenu extends rectangles {
  color TextColour;
  
    returnmenu(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
  }//end returnmenu
  //
  void draw() {
    if(Shape.get(10).GameStart == true || Shape.get(11).GameStart==true) {
    fill(Colour);
    rect(Xposition,Yposition,Width,Height);
    textSize(20);
    fill(TextColour);
    text("Return to Menu",Xposition,Yposition,Width,Height);
       if(mouseX>Xposition && mouseX<Xposition+Width && mouseY>Yposition && mouseY<Yposition+Height) {
    Colour=color(#00A8FF);
   TextColour= color(#000000);
  } else {
         Colour = color(#0000FF);
         TextColour = color(#FFFF00);
  }
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
    if(mouseX>Xposition && mouseX<Xposition+Width && mouseY>Yposition && mouseY<Yposition+Height) {
       if (Shape.get(10).GameStart==true) {
    Shape.get(10).GameStart = false;
       }
   if (Shape.get(11).GameStart==true) {
    Shape.get(11).GameStart = false;
       }
  
  }
  }//end mousePressed
  
  
  
  
  
  
  
}//end returnmenu class
