
int sliderY,penWeight,uiX,uiButtonPressed,B,C,D,E;
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
PGraphics pg;
color selectedColor=#000000;
color selectedColorSub=#000000;
void setup(){
  size(700,550);
  penWeight=1;
  sliderY=330;
  uiX=0;
  uiButtonPressed=0;
  B=-150;
  C=149;
  D=-100;
  E=150;
}
void draw(){
  noStroke();
  fill(205);
  rect(D,265,10,20,0,4,4,0);
  rect(B,0,150,550);
  fill(100);
  rect(C,265,10,20,0,4,4,0);
  if(uiButtonPressed==1){
    uiX=-150;
    B=0;
    C=0;
    D=149;
    E=0;
  }
  if(uiButtonPressed==0){
    uiX=0;
    B=-150;
    C=149;
    D=-100;
    E=150;
  }
  ui(uiX,0);
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
  if(mousePressed && dist(100,195,mouseX,mouseY)<13)
    selectedColorSub=(white);
}

void mousePressed(){
 //1
 if(uiButtonPressed==0 && dist(50,35,mouseX,mouseY)<13){
   border1=(white);
   selectedColor=(bla);
 }
 //2
 if(uiButtonPressed==0 && dist(100,35,mouseX,mouseY)<13){
   border2=(white);
   selectedColor=(darkSea);
 }
 //3
 if(uiButtonPressed==0 && dist(50,75,mouseX,mouseY)<13){
   border3=(white);
   selectedColor=(sea);
 }
 //4
 if(uiButtonPressed==0 && dist(100,75,mouseX,mouseY)<13){
   border4=(white);
   selectedColor=(lake);
 }
 //5
 if(uiButtonPressed==0 && dist(50,115,mouseX,mouseY)<13){
   border5=(white);
   selectedColor=(beige);
 }
 //6
 if(uiButtonPressed==0 && dist(100,115,mouseX,mouseY)<13){
   border6=(white);
   selectedColor=(orange);
 }
 //7
 if(uiButtonPressed==0 && dist(50,155,mouseX,mouseY)<13){
   border7=(white);
   selectedColor=(overRipeOrange);
 }
 //8
 if(uiButtonPressed==0 && dist(100,155,mouseX,mouseY)<13){
   border8=(white);
   selectedColor=(minecraftLava);
 }
 //9
 if(uiButtonPressed==0 && dist(50,195,mouseX,mouseY)<13){
   border9=(white);
   selectedColor=(apple);
 }
 //10
 if(uiButtonPressed==0 && dist(100,195,mouseX,mouseY)<13){
   border10=(white);
   selectedColor=(red);
 }
 //eraser
 if(mouseX>37 && mouseX<63 && mouseY>215 && mouseY<245)
   selectedColor=(205);
 //slider
 //adding penWieght
 if(uiButtonPressed==0 && mouseX>44 && mouseX<56 && mouseY>250 && mouseY<262 && sliderY>271){
   penWeight=penWeight+1;
   sliderY=sliderY-1;
 }
 //removing penWeight
 if(uiButtonPressed==0 && mouseX>45 && mouseX<55 && mouseY>334 && mouseY<344 && sliderY<329){
   penWeight=penWeight-1;
   sliderY=sliderY+1;
 }
 if(mouseX>149 && mouseX<159 && mouseY>265 && mouseY<285)
   uiButtonPressed=1;
 if(mouseX>0 && mouseX<10 && mouseY>265 && mouseY<285 && uiButtonPressed==1)
   uiButtonPressed=0;
 //penWeight click
 if(uiButtonPressed==0 && mouseX>45 && mouseX<55 && mouseY>265 && mouseY<330){
   penWeight=330-mouseY;
   sliderY=mouseY;
  }
}
void mouseReleased(){
  selectedColorSub=(black);
}
void mouseDragged(){
  if(mouseX>E){
    strokeWeight(penWeight);
    stroke(selectedColor);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  if(uiButtonPressed==0 && mouseX>45 && mouseX<55 && mouseY>270 && mouseY<330){
    penWeight=330-mouseY;
    sliderY=mouseY;
  }
}
void ui(int x,int y){
  pushMatrix();
  translate(x,y);
  noStroke();
  fill(70);
  rect(0,0,150,550);
  //buttons
  //1
  strokeWeight(1.5);
  tactile(50,35,13);
  fill(bla);
  circle(50,35,26);
  //2
  tactile(100,35,13);
  fill(darkSea);
  circle(100,35,26);
  //3
  tactile(50,75,13);
  fill(sea);
  circle(50,75,26);
  //4
  tactile(100,75,13);

  fill(lake);
  circle(100,75,26);
  //5
  tactile(50,115,13);
  fill(beige);
  circle(50,115,26);
  //6
  tactile(100,115,13);
  fill(orange);
  circle(100,115,26);
  //7
  tactile(50,155,13);
  fill(overRipeOrange);
  circle(50,155,26);
  //8
  tactile(100,155,13);
  fill(minecraftLava);
  circle(100,155,26);
  //9
  tactile(50,195,13);
  fill(apple);
  circle(50,195,26);
  //10
  tactile(100,195,26);
  fill(red);
  circle(100,195,26);
  //show selected color
  stroke(0);
  fill(selectedColor);
  rect(15,500,120,30);
  //eraser button
  fill(255);
  rect(37,215,26,30);
  //pen Size slider
  strokeWeight(2);
  stroke(0);
  line(50,270,50,330);
  stroke(255,20,20);
  line(50,330,50,sliderY);
  stroke(0);
  circle(50,sliderY,11);
  noStroke();
  noFill();
  rect(44,250,12,12);
  rect(45,334,10,10);
  stroke(0);
  strokeWeight(1);
  line(50,250,50,262);
  line(44,256,56,256);
  line(45,340,55,340);
  popMatrix();
}
void tactile(int x, int y, int r){
  if(dist(x,y,mouseX,mouseY)<r){
    stroke(selectedColorSub);
  }else{
    stroke(black);
  }
}
