void setup()
{
  size (1920,1080);
  colorMode(HSB);
  background(225);
}


//float flagW = width/5;
//float flagH = width/10;

float TLx = 0;
float TLy = 0;
//float BLx = 0;
//float BLy = flagH;
//float TRx = flagW;
//float TRy = 0;
//float BRx = flagW;
//float BRy = flagH;

color cRed = #F2181C;
color cYellow = #FFF700;
color cGreen = #0FF000;
color cTurq = #00E6F0;
color cBlue = #56648b;
color cPurple = #F000E0;
color cWhite = #c6c3be;

void draw()
{
  noStroke();
    fill(cWhite);
  rect (TLx, TLy, width/5, width/10);
    fill(cRed);
  rect (TLx, TLy, width/5, width/10/6);
  
}
