abstract class circles extends shapes {
  
  circles(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
  }//end circles
  //
  abstract void draw();
  //
  abstract color colours();
  //
  abstract void updateSetup(float vari1, float vari2, float vari3,float vari4, float vari5, float vari6,float vari7, float vari8,float vari9, float vari10, float vari11);
  //
  abstract void keyPressed();
  //
   abstract void keyReleased();
   //
   abstract void mousePressed();
}//end circles class
