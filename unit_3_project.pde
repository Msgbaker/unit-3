
int penWieght,sliderX,sliderX2;
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
  penWieght=1;
  sliderX=20;
}
void draw(){
  noStroke();
  fill(70);
  rect(0,0,150,550);
  //buttons
  //1
  stroke(border1);
  fill(black);
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
  stroke(0);
  line(20,255,134,255);
  stroke(255,20,20);
  line(20,255,sliderX,255);
}

void mousePressed(){
 //1
 if(dist(50,35,mouseX,mouseY)<13)
   border1=(white);
 //2
 if(dist(100,35,mouseX,mouseY)<13)
   border2=(white);
 //3
 if(dist(50,75,mouseX,mouseY)<13)
   border3=(white);
 //4
 if(dist(100,75,mouseX,mouseY)<13)
   border4=(white);
 //5
 if(dist(50,115,mouseX,mouseY)<13)
   border5=(white);
 //6
 if(dist(100,115,mouseX,mouseY)<13)
   border6=(white);
 //7
 if(dist(50,155,mouseX,mouseY)<13)
   border7=(white);
 //8
 if(dist(100,155,mouseX,mouseY)<13)
   border8=(white);
 //9
 if(dist(50,195,mouseX,mouseY)<13)
   border9=(white);
 //10
 if(dist(100,195,mouseX,mouseY)<13)
   border10=(white);
 //eraser
 if(mouseX>37 && mouseX<63 && mouseY>215 && mouseY<245)
   selectedColor=(205);
}
void mouseReleased(){
 if(dist(50,35,mouseX,mouseY)<13){
   border1=(bla);
   selectedColor=(black);
 }
 //2
 if(dist(100,35,mouseX,mouseY)<13){
   border2=(bla);
   selectedColor=(darkSea);
 }
 //3
 if(dist(50,75,mouseX,mouseY)<13){
   border3=(bla);
   selectedColor=(sea);
 }
 //4
  if(dist(100,75,mouseX,mouseY)<13){
   border4=(bla);
   selectedColor=(lake);
 }
 //5
  if(dist(50,115,mouseX,mouseY)<13){
   border5=(bla);
   selectedColor=(beige);
 }
 //6
  if(dist(100,115,mouseX,mouseY)<13){
   border6=(bla);
   selectedColor=(orange);
 }
 //7
  if(dist(50,155,mouseX,mouseY)<13){
   border7=(bla);
   selectedColor=(overRipeOrange);
 }
 //8
  if(dist(100,155,mouseX,mouseY)<13){
   border8=(bla);
   selectedColor=(minecraftLava);
 }
 //9
  if(dist(50,195,mouseX,mouseY)<13){
   border9=(bla);
   selectedColor=(apple);
 }
 //10
  if(dist(100,195,mouseX,mouseY)<13){
   border10=(bla);
   selectedColor=(red);
 }
}
void mouseDragged(){
  strokeWeight(penWieght);
  stroke(selectedColor);
  line(pmouseX,pmouseY,mouseX,mouseY);
  if(mouseX>20 && mouseX<134 && mouseY>254 && mouseY<246)
    sliderX=mouseX;
}
