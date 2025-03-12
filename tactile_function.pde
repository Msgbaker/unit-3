void tactile(int x, int y, int r){
  if(dist(x,y,mouseX,mouseY)<r){
    ui.stroke(selectedColorSub);
  }else{
    ui.stroke(black);
  }
}
void tactileSquare(int x,int c, int y, int b){
  if(mouseX>x && mouseX<c && mouseY>y && mouseY<b)
    ui.stroke(white);
}
