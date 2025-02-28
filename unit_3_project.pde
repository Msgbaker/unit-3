
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
}
void draw(){
  background(255);
  noStroke();
  fill(80);
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
  fill(selectedColor);
  rect(15,500,120,30);
}

void mousePressed(){
 //1
 if(dist(50,35,mouseX,mouseY)<26)
   border1=(white);
 //2
 if(dist(100,35,mouseX,mouseY)<26)
   border2=(white);
 //3
 if(dist(50,75,mouseX,mouseY)<26)
   border3=(white);
}
void mouseReleased(){
 if(dist(50,35,mouseX,mouseY)<26)
   border1=(bla);
   selectedColor=(black);
 //2
 if(dist(100,35,mouseX,mouseY)<26)
   border2=(bla);
   selectedColor=(darkSea);
}
