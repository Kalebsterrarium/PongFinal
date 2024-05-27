class Net extends rectangles {
  float NetStartParameter;
  Net(float Xposition, float Yposition, float Width, float Height, color Colour) {
     super(Xposition,Yposition,Width,Height,Colour);
  }//end Net 
  
  void draw() {
   fill(Colour);
    rect(Xposition,Yposition,Width,Height);
    NetPosition();
  }//end draw
  //
  color colours() {
    color c = 3;
    return c;
  }
  //
  void updateSetup(float NSP,float Xposition1, float Xposition2) {
    NetStartParameter = NSP;
   
  }//end updateSetup
  void NetPosition() {
      for(int i =0; i<1; i++) {
       if(i == 0) {
      Xposition = Xposition1;
    } else {
      Xposition = Xposition2;
    }
     }
  }//end NetPosition
}// end Net class
