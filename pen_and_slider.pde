void mouseDragged(){
  if(mouseX>E){
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
