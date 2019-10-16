float xstart,xnoise,ynoise;
float xstart2,xnoise2,ynoise2;
void setup() {
  size(2048,2048);
  smooth(); 
  background(255);
  xstart = random(50);
  xnoise = xstart;
  ynoise = random(50);
  xstart2 = random(50);
  xnoise2 = xstart2;
  ynoise2 = random(50);
  for(int y=0;y<=height;y+=5){ 
    ynoise += 0.006;
    xnoise = xstart; 
    ynoise2 += 0.1;
    xnoise2 = xstart2; 
    for(int x=0;x<=width;x+=5){
      xnoise += 0.006;
      xnoise2 += 0.1;
      drawPoint(x,y,noise(xnoise+xnoise2*0.03,ynoise+ynoise2*0.03));
    } 
  }
  save("Day5_2.jpeg");
}
void drawPoint(float x, float y, float noiseFactor) { 
  print("  ",noiseFactor);
  float angle=2*PI*noiseFactor;
  float len = 10 * noiseFactor;
  strokeWeight(1);
  colorMode(HSB);
  blendMode(MULTIPLY);
  float a=randomGaussian()*127;
  stroke(a+127,255,255,50);
  //float a=randomGaussian()*50;
  //stroke(111+a,57+a,a,50+abs(a));
  line(x,y,x+cos(angle)*100,y+sin(angle)*100);
  
}
