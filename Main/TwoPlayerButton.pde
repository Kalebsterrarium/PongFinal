class players2button extends rectangles {
  
color TextColour;
   
    players2button(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
  }//end players2button
  //
  void draw() {
    if(GameStart == false && Shape.get(12).GameStart == false) {
    fill(Colour);
    rect(Xposition,Yposition,Width,Height);
    textSize(60);
    fill(TextColour);
    text("2 Players",Xposition,Yposition,Width,Height);
    
    
    if(mouseX>Xposition && mouseX<Xposition+Width && mouseY>Yposition && mouseY<Yposition+Height) {
    Colour=color(#CEB577);
   TextColour= color(#000000);
  } else {
         Colour = color(#9B8859);
         TextColour = color(#5A5A5A);
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
       if (GameStart==false) {
    GameStart = true;
       }
  
  }
  }//end mousePressed
  
}
