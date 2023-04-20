void setup()
{
  size (1920,1080);
  colorMode(HSB);
  background(225);
}

color cRed = #F2181C;
color cYellow = #FFF700;
color cGreen = #0FF000;
color cTurq = #00E6F0;
color cBlue = #0044FA;
color cPurple = #F000E0;
color cWhite = #c6c3be;
color cBlack = #000000;
color cBrown = #4D3919;
color cPink = #E2C0E3;

void draw()
{

int w = width;
int h = height;

float flagW = width/5;
float flagH = width/10;

float TLx = 0.0f;
float TLy = 0.0f;
float BLx = 0.0f;
float BLy = flagH;
//float TRx = flagW;
//float TRy = 0;
//float BRx = flagW;
//float BRy = flagH;  
  
print(w,h);

  noStroke();
  //stripes
    fill(cWhite);
  rect (TLx, TLy, flagW, flagH);
    fill(cRed);
  rect (TLx, TLy, flagW, flagH/6);
    fill(cYellow);
  rect (TLx, TLy+flagH/6, flagW, flagH/6);
    fill(cGreen);
  rect (TLx, TLy+flagH/6*2, flagW, flagH/6);
    fill(cTurq);
  rect (TLx, TLy+flagH/6*3, flagW, flagH/6);
    fill(cBlue);
  rect (TLx, TLy+flagH/6*4, flagW, flagH/6);
    fill(cPurple);
  rect (TLx, TLy+flagH/6*5, flagW, flagH/6);
  
  //triangles
    fill(cBlack);
  triangle (TLx,TLy, 0,BLy, flagW/3,flagH/2);
    fill(cBrown);
  triangle (TLx-flagH/8,TLy, TLx,TLy+flagH/8*7, flagW/15*4,flagH/2);
  
  
}
