 class MenuInteract extends circles {
  float[] disapearingX = new float[15];
  float[] disapearingY = new float[15];
  color Fading;
  int[] transparency = new int[15];
  int[] shapeintensity = new int[15];
  int number =-1;
  MenuInteract(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
    for (int i=0;i<15;i++) {
    shapeintensity[i] =14-i;
     }
  }//end MenuInteract
  //
   void draw() {
     if ( Shape.get(11).GameStart == false && Shape.get(12).GameStart == false) {
        number++;
     if(number <= 14) {
       disapearingX[number]=mouseX;
       disapearingY[number]=mouseY;
      ;
     
       for(int brightnesslevel=0; brightnesslevel<15;brightnesslevel++) {
      transparency[brightnesslevel]= int(255*((14.0-brightnesslevel)/14));
      
       }
      
     } else if (number >= 14) {
       number =0;
     }
     
      
     
     
     
     
     for (int i=0;i<15;i++) {
    shapeintensity[i]++;
    if(shapeintensity[i]>14) {
      shapeintensity[i]=0;
    }
     }
     
     
      colorMode(HSB);
      //println(saturation(Colour));
     for(int i=0;i<15;i++) {
        Fading=color(hue(Colour),(saturation(Colour)),brightness(Colour));
//println(saturation(Fading ));
      
       fill(Fading,transparency[shapeintensity[i]]);
     ellipse(disapearingX[i],disapearingY[i],Width,Height);
   
     }
     colorMode(RGB);
     }
   }//end draw
  //
    color colours() {
    color c = 3;
    return c;
  }//end colours
  //
   void updateSetup(float vari1, float vari2, float vari3,float vari4, float vari5, float vari6,float vari7, float vari8,float vari9, float vari10, float vari11) {
     
   }//end updateSetup
  //
   void keyPressed() {
     
   }//end keyPressed
  //
    void keyReleased() {
      
    }//end keyReleased
   //
    void mousePressed() {
    
    }//end mousePressed
}//end MenuIteract class
