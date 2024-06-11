float MenuX,MenuY,MenuWidth,MenuHeight;

void StartMenu() {
  MenuX = 0;
  MenuY=0;
  MenuWidth= appWidth;
  MenuHeight=appHeight;
  fill(#4A412A);
  rect(MenuX,MenuY,MenuWidth,MenuHeight);
  fill(Grosscolour1);
  rect(PlayerX1,PlayerY1,PlayerWidth1,PlayerHeight1);
  fill(Grosscolour2);
  rect(PlayerX2,PlayerY2,PlayerWidth2,PlayerHeight2);
  textSize(60);
  fill(PT1);
  text("Single Player",PlayerX1,PlayerY1,PlayerWidth1,PlayerHeight1);
  fill(PT2);
  text("2 Players",PlayerX2,PlayerY2,PlayerWidth2,PlayerHeight2);
 
}//end StartMenu
