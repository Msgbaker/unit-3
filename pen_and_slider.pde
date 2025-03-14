void mouseDragged(){
  if(mouseX>E &&stampON==true){
    canvas.beginDraw();
    microwave.resize(stampXsize,95+penWeight);
    canvas.image(microwave,stampX,stampY);
    canvas.endDraw();
    image(canvas,0,0);
    ui(0,0);
  }
  if(mouseX>E && stampON==false){
    canvas.beginDraw();
    canvas.strokeWeight(penWeight);
    canvas.stroke(selectedColor);
    canvas.line(pmouseX,pmouseY,mouseX,mouseY);
    canvas.endDraw();
    image(canvas,0,0);
    ui(0,0);
  }
  if(uiButtonPressed==0 && mouseX>45 && mouseX<55 && mouseY>270 && mouseY<330){
    penWeight=330-mouseY;
    sliderY=mouseY;
  }
}
