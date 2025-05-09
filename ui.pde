void ui(int x,int y){
  ui.beginDraw();
  ui.pushMatrix();
  ui.translate(x,y);
  ui.noStroke();
  ui.fill(70);
  ui.rect(0,0,150,550);
  //buttons
  //1
  ui.strokeWeight(1.5);
  tactile(50,35,13);
  ui.fill(bla);
  ui.circle(50,35,26);
  //2
  tactile(100,35,13);
  ui.fill(darkSea);
  ui.circle(100,35,26);
  //3
  tactile(50,75,13);
  ui.fill(sea);
  ui.circle(50,75,26);
  //4
  tactile(100,75,13);
  ui.fill(lake);
  ui.circle(100,75,26);
  //5
  tactile(50,115,13);
  ui.fill(beige);
  ui.circle(50,115,26);
  //6
  tactile(100,115,13);
  ui.fill(orange);
  ui.circle(100,115,26);
  //7
  tactile(50,155,13);
  ui.fill(overRipeOrange);
  ui.circle(50,155,26);
  //8
  tactile(100,155,13);
  ui.fill(minecraftLava);
  ui.circle(100,155,26);
  //9
  tactile(50,195,13);
  ui.fill(apple);
  ui.circle(50,195,26);
  //10
  tactile(100,195,26);
  ui.fill(red);
  ui.circle(100,195,26);
  //show selected color
  ui.stroke(0);
  ui.fill(selectedColor);
  ui.rect(15,500,120,30);
  //eraser button
  ui.fill(255);
  tactileSquare(37,63,215,245);
  ui.rect(37,215,26,30);
  download.resize(26,30);
  ui.image(download,37,215);
  //pen Size slider
  ui.strokeWeight(2);
  ui.stroke(0);
  ui.line(50,270,50,330);
  ui.stroke(255,20,20);
  ui.line(50,330,50,sliderY);
  ui.stroke(0);
  tactile2(50,sliderY,6);
  ui.circle(50,sliderY,12);
  ui.noStroke();
  ui.noFill();
  ui.rect(44,250,12,12);
  ui.rect(45,334,10,10);
  ui.stroke(0);
  ui.strokeWeight(1);
  ui.line(50,250,50,262);
  ui.line(44,256,56,256);
  ui.line(45,340,55,340);
  //uibutton
  ui.fill(110);
  ui.noStroke();
  ui.rect(149,265,10,20,0,4,4,0);
  ui.rect(149,265,10,20,0,4,4,0);
  //new
  tactileSquare(80,120,255,275);
  ui.fill(0);
  ui.rect(80,255,40,20);
  ui.fill(255);
  ui.textSize(14);
  ui.text("New",87,269);
  //load
  ui.stroke(0);
  tactileSquare(80,120,285,305);
  ui.fill(0);
  ui.rect(80,285,40,20);
  ui.fill(255);
  ui.text("load",87,299);
  //save
  ui.stroke(0);
  tactileSquare(80,120,315,335);
  ui.fill(0);
  ui.rect(80,315,40,20);
  ui.fill(255);
  ui.text("save",87,329);
  //stamp
  ui.stroke(0);
  tactileSquare(34,125,369,470);
  ui.rect(34,369,91,101);
  microwaveUi.resize(90,100);
  ui.image(microwaveUi,35,370);
  //
  ui.popMatrix();
  ui.endDraw();
  if (E==150) 
    image(ui, 0, 0);
  else
    image(ui,-150,0);
}
