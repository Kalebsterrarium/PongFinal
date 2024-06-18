class scoreBoard extends rectangles {
  
  String score = "0";
  int scorecounter =0;
  scoreBoard(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
  }//end scoreBoard
  
  
  
  color colours() {
    color c = 3;
    return c;
  }//end colours
  //
  void updateSetup(float vari1, float vari2, float vari3,float vari4, float vari5, float vari6,float vari7, float vari8,float vari9, float vari10, float vari11) {
 
  }//end updateSetup
  //
  void draw() {
    textSize(40);
    fill(Colour);
    rect(Xposition,Yposition,Width,Height);
    fill(#000000);
    text(score,Xposition,Yposition,Width,Height);
    Goaldetection();
  }//end draw
  //
  void keyPressed() {
    
  }//end keyPressed
  //
  void keyReleased() {
    
  }//end keyReleased
  //
  void mousePressed() {
  }//end mousePressed
  //
 void Goaldetection() {
    if (Xposition > 0) {
      if (Shape.get(5).Goal[0] == true) {
        scorecounter++; 
        score = str(scorecounter);
      }
    } else {
       if (Shape.get(5).Goal[1] == true) {
        scorecounter++; 
        score = str(scorecounter);
      }
    }
    if ( Shape.get(11).GameStart == false && Shape.get(12).GameStart == false) {
      scorecounter =0;
      score = str(scorecounter);
    }
  }
}
