
boolean stampON;
PImage microwave,microwaveUi,download;
int sliderY,penWeight,uiButtonPressed,C,D,E,stampX,stampY,stampXsize,stampYsize;
color bla=#001219;
color darkSea=#005F73;
color sea=#0A9396;
color lake=#94D2BD;
color beige=#E9D8A9;
color orange=#EE9B00;
color overRipeOrange=#CA6702;
color minecraftLava=#BB3E03;
color apple=#AE2012;
color red=#9B2226;
color border1=#000000;
color border2=#000000;
color border3=#000000;
color border4=#000000;
color border5=#000000;
color border6=#000000;
color border7=#000000;
color border8=#000000;
color border9=#000000;
color border10=#000000;
color white=#FFFFFF;
color black=#000000;
PGraphics canvas,stamp,ui;
color selectedColor=#000000;
color selectedColorSub=#000000;
void setup(){
  size(700,550);
  penWeight=1;
  sliderY=330;
  uiButtonPressed=0;
  C=149;
  D=150;
  E=150;
  canvas=createGraphics(700,550);
  ui=createGraphics(700,550);
  stamp=createGraphics(700,550);
  microwave=loadImage("microwave.png");
  microwaveUi=loadImage("microwave.png");
  download=loadImage("download.png");
  stampON=false;
}
void draw(){
  background(205);
  canvas.beginDraw();
  canvas.noStroke();
  canvas.fill(205);
  if(uiButtonPressed==1){
    C=0;
    E=0;
    D=0;
  }
  if(uiButtonPressed==0){
    C=149;
    E=150;
    D=149;
  }
  canvas.endDraw();
  image(canvas,0,0);
  ui(0,0);
  //1
  if(uiButtonPressed==0 && dist(50,35,mouseX,mouseY)<13)
   selectedColorSub=(bla);
  //2
  if(uiButtonPressed==0 && dist(100,35,mouseX,mouseY)<13)
   selectedColorSub=(darkSea);
  //3
  if(uiButtonPressed==0 && dist(50,75,mouseX,mouseY)<13)
   selectedColorSub=(sea);
  //4
  if(uiButtonPressed==0 && dist(100,75,mouseX,mouseY)<13)
   selectedColorSub=(lake);
  //5
  if(uiButtonPressed==0 && dist(50,115,mouseX,mouseY)<13)
   selectedColorSub=(beige);
  //6
  if(uiButtonPressed==0 && dist(100,115,mouseX,mouseY)<13)
   selectedColorSub=(orange);
  //7
  if(uiButtonPressed==0 && dist(50,155,mouseX,mouseY)<13)
   selectedColorSub=(overRipeOrange);
  //8
  if(uiButtonPressed==0 && dist(100,155,mouseX,mouseY)<13)
   selectedColorSub=(minecraftLava);
  //9
  if(uiButtonPressed==0 && dist(50,195,mouseX,mouseY)<13)
   selectedColorSub=(apple);
  //10
  if(uiButtonPressed==0 && dist(100,195,mouseX,mouseY)<13)
   selectedColorSub=(red);
  //1
  if(mousePressed && dist(50,35,mouseX,mouseY)<13)
    selectedColorSub=(white);
  //2
  if(mousePressed && dist(100,35,mouseX,mouseY)<13)
    selectedColorSub=(white);
  //3
  if(mousePressed && dist(50,75,mouseX,mouseY)<13)
    selectedColorSub=(white);
  //4
  if(mousePressed && dist(100,75,mouseX,mouseY)<13)
    selectedColorSub=(white);
  //5
  if(mousePressed && dist(50,115,mouseX,mouseY)<13)
    selectedColorSub=(white);
  //6
  if(mousePressed && dist(100,115,mouseX,mouseY)<13)
    selectedColorSub=(white);
  //7
  if(mousePressed && dist(50,155,mouseX,mouseY)<13)
    selectedColorSub=(white);
  //8
  if(mousePressed && dist(100,155,mouseX,mouseY)<13)
    selectedColorSub=(white);
  //9
  if(mousePressed && dist(50,195,mouseX,mouseY)<13)
    selectedColorSub=(white);
  //10
  
    selectedColorSub=(white);
    stampX=mouseX-(stampXsize/2);
    stampXsize=75+penWeight;
    stampY=mouseY-(stampYsize/2);
    stampYsize=75+penWeight;
  
}
void mouseReleased(){
  selectedColorSub=(black);
}
void saveImage(File a){
  if(a!=null){
    PImage canvs=canvas.get(0,0,width,height);
    canvs.save(a.getAbsolutePath());
  }
}
void loadImage(File a){
  if(a!=null){
    int b=0;
    while(b<10){
      PImage pic=loadImage(a.getPath());
      canvas.beginDraw();
      canvas.image(pic,0,0);
      canvas.endDraw();
      b=b+1;
    }
  }
}
