class Net extends rectangles {
   float lineX1,lineY1,lineX2,lineY2;
    float PongTableHeight;
    color TableColour =color(#FFFF00);
  Net(float Xposition, float Yposition, float Width, float Height, color Colour) {
     super(Xposition,Yposition,Width,Height,Colour);    
  }//end Net 
  
  void draw() {
   fill(Colour);
    rect(Xposition,Yposition,Width,Height);
   lines();
  }//end draw
  //
  color colours() {
    color c = 3;
    return c;
  }
  //
  void updateSetup(float PTH,float vari2, float vari3) {
    PongTableHeight=PTH;
   
  }//end updateSetup
 void lines() {
      //line reset
      lineX1=Xposition;
      lineY1=Yposition;
      lineX2=Xposition + Width;
      lineY2= Yposition+ PongTableHeight/10;
      //line update
      for(int i=0;i<10;i++) {
        fill(TableColour);
        stroke(TableColour);
        line(lineX1,lineY1,lineX2,lineY2);
        lineY1+=PongTableHeight/10;
        lineY2+=PongTableHeight/10;
        noStroke();
      }
   
 }//end lines
 //
  void keyPressed() {}
}// end Net class
