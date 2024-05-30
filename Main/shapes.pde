abstract class shapes {
  //global variables
  float Xposition,Yposition,Width,Height;
  color Colour;
  float XMovement,YMovement;
  shapes(float Xposition, float Yposition, float Width, float Height, color Colour) {
    this.Xposition = Xposition;
    this.Yposition = Yposition;
    this.Width = Width;
    this.Height = Height;
    this.Colour = Colour;
  }//end shapes
  
  
 abstract void draw();
  //
  abstract color colours();
  //
  abstract void updateSetup(float vari1, float vari2, float vari3,float vari4);
  //
  abstract void keyPressed();
  //
  abstract void keyReleased();
}//end shapes class
