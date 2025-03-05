
int sliderY,penWeight,sliderValue,uiX,y;
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
color selectedColor=#000000;
void setup(){
  size(700,550);
  penWeight=1;
  sliderY=325;
  sliderValue=325;
  uiX=0;
  y=0;
}
void draw(){
  noStroke();
  fill(100);
  rect(149,265,10,20,0,4,4,0);
  ui(uiX,y);
  //pop off ui

}

void mousePressed(){
 //1
 if(dist(50,35,mouseX,mouseY)<13){
   border1=(white);
   selectedColor=(black);
 }
 //2
 if(dist(100,35,mouseX,mouseY)<13){
   border2=(white);
   selectedColor=(darkSea);
 }
 //3
 if(dist(50,75,mouseX,mouseY)<13){
   border3=(white);
   selectedColor=(sea);
 }
 //4
 if(dist(100,75,mouseX,mouseY)<13){
   border4=(white);
   selectedColor=(lake);
 }
 //5
 if(dist(50,115,mouseX,mouseY)<13){
   border5=(white);
   selectedColor=(beige);
 }
 //6
 if(dist(100,115,mouseX,mouseY)<13){
   border6=(white);
   selectedColor=(orange);
 }
 //7
 if(dist(50,155,mouseX,mouseY)<13){
   border7=(white);
   selectedColor=(overRipeOrange);
 }
 //8
 if(dist(100,155,mouseX,mouseY)<13){
   border8=(white);
   selectedColor=(minecraftLava);
 }
 //9
 if(dist(50,195,mouseX,mouseY)<13){
   border9=(white);
   selectedColor=(apple);
 }
 //10
 if(dist(100,195,mouseX,mouseY)<13){
   border10=(white);
   selectedColor=(red);
 }
 //eraser
 if(mouseX>37 && mouseX<63 && mouseY>215 && mouseY<245)
   selectedColor=(205);
 //slider
 //adding penWieght
 if(mouseX>44 && mouseX<56 && mouseY>250 && mouseY<262 && sliderY>265){
   penWeight=penWeight+1;
   sliderY=sliderY-1;
 }
 //removing penWeight
 if(mouseX>45 && mouseX<55 && mouseY>334 && mouseY<344 && sliderY<325){
   penWeight=penWeight-1;
   sliderY=sliderY+1;
 }
 if(mouseX>149 && mouseX<159 && mouseY>265 && mouseY<285)
   uiX=uiX-150;
 }
void mouseReleased(){
  border1=(black);
  border2=(black);
  border3=(black);
  border4=(black);
  border5=(black);
  border6=(black);
  border7=(black);
  border8=(black);
  border9=(black);
  border10=(black);
}
void mouseDragged(){
  if(mouseX>150){
    strokeWeight(penWeight);
    stroke(selectedColor);
    line(pmouseX,pmouseY,mouseX,mouseY);
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
  stroke(border1);
  fill(bla);
  circle(50,36,26);
  //2
  stroke(border2);
  fill(darkSea);
  circle(100,35,26);
  //3
  stroke(border3);
  fill(sea);
  circle(50,75,26);
  //4
  stroke(border4);
  fill(lake);
  circle(100,75,26);
  //5
  stroke(border5);
  fill(beige);
  circle(50,115,26);
  //6
  stroke(border6);
  fill(orange);
  circle(100,115,26);
  //7
  stroke(border7);
  fill(overRipeOrange);
  circle(50,155,26);
  //8
  stroke(border8);
  fill(minecraftLava);
  circle(100,155,26);
  //9
  stroke(border9);
  fill(apple);
  circle(50,195,26);
  //10
  stroke(border10);
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
  line(50,265,50,320);
  stroke(255,20,20);
  line(50,320,50,sliderY);
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
