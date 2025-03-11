void tactile(int x, int y, int r){
  if(dist(x,y,mouseX,mouseY)<r){
    ui.stroke(selectedColorSub);
  }else{
    ui.stroke(black);
  }
}
