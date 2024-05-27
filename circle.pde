abstract class circles extends shapes {
  
  circles(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
  }//end circles
  //
  abstract void draw();
  //
  abstract color colours();
  //
  abstract void updateSetup(float vari1, float vari2, float vari3);
  
}//end circles class
