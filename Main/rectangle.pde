abstract class rectangles extends shapes {
  
  rectangles(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
  }//end circles
  //
  abstract void draw();
  //
  abstract color colours();
  //
  abstract void updateSetup(float vari1, float vari2, float vari3,float vari4, float vari5, float vari6,float vari7);
  //
  abstract void keyPressed();
  //
   abstract void keyReleased();
}//end rectangles class
