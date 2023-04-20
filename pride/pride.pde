void setup()
{
  size (1920,1080);
  colorMode(HSB);
  background(225);
}

float rdm1 = random(0,width);
float rdm2 = random(0,width);
float rdmScale = random(10,50);

flag f1 = new flag(rdm1,rdm1); 
flag f2 = new flag(rdm2,rdm2); 

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

float a = 0.0f;

float w = width*rdmScale;
float h = height*rdmScale;

float flagW = w/5;
float flagH = w/10;
  
//float TLx;
//float TLy;
//float BLx;
//float BLy = flagH;
//float TRx = flagW;
//float TRy = 0;
//float BRx = flagW;
//float BRy = flagH;  

void draw()
{

  
  background(225);
  f1.update();
  f2.update();
}

class flag{

float TLx, TLy;
flag (float PosX, float PosY) {
  TLx = PosX;
  TLy = PosY;
}

void update() {
  noStroke();
  //stripes
  //  fill(cWhite);
  //rect (TLx, TLy, flagW, flagH);
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
  
  //triangles + circle
    fill(cBlack);
  triangle (TLx,TLy, TLx,TLy+flagH, TLx+flagW/3,TLy+flagH/2);
    fill(cBrown);
  triangle (TLx,TLy+flagH/8, TLx,TLy+flagH/8*7, TLx+flagW/15*4,TLy+flagH/2);
    fill(cPink);
  triangle (TLx,TLy+flagH/4, TLx,TLy+flagH/4*3, TLx+flagW/15*3,TLy+flagH/2);
    fill(cYellow);
  triangle (TLx,TLy+flagH/8*3, TLx,TLy+flagH/8*5, TLx+flagW/15*2,TLy+flagH/2);
    noFill();
    stroke(cPurple);
    strokeWeight(flagW/100);
  circle (TLx+flagW/15,TLy+flagH/2, flagW/25);
  
  flagW += sin(a);
  a += .1;
  
  }
}
