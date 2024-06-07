abstract class shapes {
  //global variables
  float Xposition,Yposition,Width,Height;
  color Colour;
  float XMovement,YMovement;
  float LeftEdge,RightEdge;
  float CenterlineY_Top,CenterlineY_Bottom,CenterlineX;
  boolean BallStop;
  boolean[] Goal = new boolean[2];
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
  abstract void updateSetup(float vari1, float vari2, float vari3,float vari4, float vari5, float vari6,float vari7, float vari8,float vari9, float vari10, float vari11);
  //
  abstract void keyPressed();
  //
  abstract void keyReleased();
  //
  abstract void mousePressed();
}//end shapes class
