//global variables
ArrayList<shapes> Shape = new ArrayList<shapes>();
boolean startgame = false;
float PlayerX1,PlayerY1,PlayerWidth1,PlayerHeight1;
float PlayerX2,PlayerY2,PlayerWidth2,PlayerHeight2;
color Grosscolour1, Grosscolour2, PT1,PT2;
float ReturnMenuX, ReturnMenuY,ReturnMenuWidth,ReturnMenuHeight;
//
void setup() {
  
  fullScreen();
  display();
   PFont font;
      font = createFont("Curlz MT",20);
    textAlign(CENTER,CENTER);
    textFont(font,displayHeight);
  int ballDiameter = appWidth*1/64;
  color BackGround = color(#e8e337);
  color netcolour = color(#FFFFFF);
  //
  Grosscolour1 = color(#9B8859);
   Grosscolour2 = color(#9B8859);
   PT1 = color(#5A5A5A);
   PT2 = color(#5A5A5A);
  PlayerWidth1=((appWidth*2)/10);
  PlayerHeight1=((appHeight*3)/10);
   PlayerX1=((appWidth*2)/10);
  PlayerY1=appHeight/2;
  PlayerWidth2=PlayerWidth1;
  PlayerHeight2=PlayerHeight1;
  PlayerX2=((appWidth*7)/10) - PlayerWidth2/2;
  PlayerY2=appHeight/2;
  ReturnMenuX=appWidth*0;
  ReturnMenuY=appHeight*0;
  ReturnMenuWidth=appWidth/15;
  ReturnMenuHeight=appHeight/20;
  //
  pongTable PongTable = new pongTable(appWidth*0,appHeight*1/10,appWidth,appHeight*8/10,BackGround);
   Net LeftNet = new Net(appWidth*0,appHeight*1/10,ballDiameter*2,appHeight*8/10, netcolour);
   Net RightNet = new Net(appWidth - LeftNet.Width,appHeight*1/10,ballDiameter*2,appHeight*8/10, netcolour);
   Paddles LeftPaddle = new Paddles(LeftNet.Xposition + LeftNet.Width, appHeight/2 - ballDiameter*5/2 ,ballDiameter*1/2, ballDiameter*5, color(#fe89d0));
   Paddles RightPaddle = new Paddles(RightNet.Xposition - ballDiameter*1/2, appHeight/2 - ballDiameter*5/2 ,ballDiameter*1/2, ballDiameter*5, color(#fe89d0));
   balls PongBall = new balls(float(appWidth/2),float(appHeight/2),ballDiameter,ballDiameter,color(#b2006c));
   scoreBoard Player1ScoreBoard = new scoreBoard(float(appWidth*0),float(appHeight*0),float(appWidth/2),((appHeight - PongTable.Height)/2),color(#F2F000));
   scoreBoard Player2ScoreBoard = new scoreBoard(float(appWidth/2),float(appHeight*0),float(appWidth/2),((appHeight - PongTable.Height)/2),color(#F2F000));
   Startmenu StartMenu = new Startmenu(appWidth*0,appHeight*0, appWidth, appHeight, color(#4A412A));
   Quit QuitButton = new Quit(float(appWidth*14/15),float(appHeight*0),float(appWidth/15),float(appHeight/20),color(#FF0000)); 
   players2button TwoPlayerButton = new players2button(((appWidth*7)/10) - appWidth/10,appHeight/2,((appWidth*2)/10),((appHeight*3)/10),color(#9B8859));
   players1button SinglePlayerButton = new players1button(((appWidth*2)/10),appHeight/2,((appWidth*2)/10),((appHeight*3)/10),color(#9B8859));
   returnmenu ReturnMenu = new returnmenu(appWidth*0,appHeight*0,appWidth/15,appHeight/20,color(#0000FF));
   MenuInteract Interaction = new MenuInteract(mouseX,mouseY,ballDiameter/3,ballDiameter/3,color(#b2006c));
   abilitymenu AbilityMenu = new abilitymenu(appWidth*0,(PongTable.Yposition + PongTable.Height),appWidth,appHeight/10,color(#FFFF00));
   LeftNet.updateSetup(PongTable.Height,0,0,0,0,0,0,0,0,0,0);
   RightNet.updateSetup(PongTable.Height,0,0,0,0,0,0,0,0,0,0);
  PongTable.updateSetup(appHeight*1/10,appHeight*9/10,appWidth*1/2,0,0,0,0,0,0,0,0);
  LeftPaddle.updateSetup(PongTable.CenterlineX,4,PongTable.CenterlineY_Top,PongTable.CenterlineY_Bottom,0,0,0,0,0,0,0);
  RightPaddle.updateSetup(PongTable.CenterlineX,4,PongTable.CenterlineY_Top,PongTable.CenterlineY_Bottom,0,0,0,0,0,0,0);
  PongBall.updateSetup(PongTable.CenterlineY_Top,PongTable.CenterlineY_Bottom,PongTable.CenterlineX,LeftPaddle.Yposition,(LeftPaddle.Yposition + LeftPaddle.Height),RightPaddle.Yposition,(RightPaddle.Yposition + RightPaddle.Height),(LeftNet.Xposition + LeftNet.Width + LeftPaddle.Width),(RightNet.Xposition - RightPaddle.Width),PongTable.Xposition,(PongTable.Xposition + PongTable.Width));
  Player1ScoreBoard.updateSetup(0,0,0,0,0,0,0,0,0,0,0);
  Player2ScoreBoard.updateSetup(0,0,0,0,0,0,0,0,0,0,0);
  Shape.add(PongTable);//0
  Shape.add(LeftNet);//1
   Shape.add(RightNet);//2
   Shape.add(LeftPaddle);//3
   Shape.add(RightPaddle);//4
   Shape.add(PongBall);//5
   Shape.add(Player1ScoreBoard);//6
   Shape.add(Player2ScoreBoard);//7
   Shape.add(StartMenu);//8
   Shape.add(Interaction);//9
   Shape.add(QuitButton);//10
   Shape.add(TwoPlayerButton);//10-11
   Shape.add(SinglePlayerButton);//11-12
   Shape.add(ReturnMenu);//13
   Shape.add(AbilityMenu);//14
}//end setup
//
void draw() {
  
  for ( shapes s : Shape) {
    s.draw();
  }
  
 

  
  if(mouseX>PlayerX2 && mouseX<PlayerX2+PlayerWidth2 && mouseY>PlayerY2 && mouseY<PlayerY2+PlayerHeight2) {
       Grosscolour2=color(#CEB577);
       PT2= color(#000000);
  } else {
     Grosscolour2 = color(#9B8859);
     PT2=color(#5A5A5A);
  }
 
}//end draw
//
void mousePressed() {
   for ( shapes s : Shape) {
    s.mousePressed();
  }
  
  
 
 /*if(mouseX>ReturnMenuX && mouseX<ReturnMenuX+ReturnMenuWidth && mouseY>ReturnMenuY && mouseY<ReturnMenuY+ReturnMenuHeight) {
       if (startgame==true) {
    startgame = false;
  }
  } 
  */
}//end mousepressed
//
void keyPressed() {
 for ( shapes s : Shape) {
    s.keyPressed();
  }
}//end keypressed
//
void keyReleased() {
   for ( shapes s : Shape) {
    s.keyReleased();
  }
}//end keyreleased
