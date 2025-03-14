void mousePressed(){
 //1
 if(uiButtonPressed==0 && dist(50,35,mouseX,mouseY)<13){
   border1=(white);
   selectedColor=(bla);
   stampON=false;
 }
 //2
 if(uiButtonPressed==0 && dist(100,35,mouseX,mouseY)<13){
   border2=(white);
   selectedColor=(darkSea);
   stampON=false;
 }
 //3
 if(uiButtonPressed==0 && dist(50,75,mouseX,mouseY)<13){
   border3=(white);
   selectedColor=(sea);
   stampON=false;
 }
 //4
 if(uiButtonPressed==0 && dist(100,75,mouseX,mouseY)<13){
   border4=(white);
   selectedColor=(lake);
   stampON=false;
 }
 //5
 if(uiButtonPressed==0 && dist(50,115,mouseX,mouseY)<13){
   border5=(white);
   selectedColor=(beige);
   stampON=false;
 }
 //6
 if(uiButtonPressed==0 && dist(100,115,mouseX,mouseY)<13){
   border6=(white);
   selectedColor=(orange);
   stampON=false;
 }
 //7
 if(uiButtonPressed==0 && dist(50,155,mouseX,mouseY)<13){
   border7=(white);
   selectedColor=(overRipeOrange);
   stampON=false;
 }
 //8
 if(uiButtonPressed==0 && dist(100,155,mouseX,mouseY)<13){
   border8=(white);
   selectedColor=(minecraftLava);
   stampON=false;
 }
 //9
 if(uiButtonPressed==0 && dist(50,195,mouseX,mouseY)<13){
   border9=(white);
   selectedColor=(apple);
   stampON=false;
 }
 //10
 if(uiButtonPressed==0 && dist(100,195,mouseX,mouseY)<13){
   border10=(white);
   selectedColor=(red);
   stampON=false;
 }
 //eraser
 if(mouseX>37 && mouseX<63 && mouseY>215 && mouseY<245)
   selectedColor=(205);
   stampON=false;
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
 //uibutton
 if(mouseX>149 && mouseX<159 && mouseY>265 && mouseY<285)
   uiButtonPressed=1;
 if(mouseX>0 && mouseX<10 && mouseY>265 && mouseY<285 && uiButtonPressed==1)
   uiButtonPressed=0;
 //penWeight click
 if(uiButtonPressed==0 && mouseX>45 && mouseX<55 && mouseY>265 && mouseY<330){
   penWeight=330-mouseY;
   sliderY=mouseY;
  }
 //new button
  if(uiButtonPressed==0 && mouseX>80 && mouseX<120 && mouseY>255 && mouseY<275)
    canvas.beginDraw();
    canvas.background(205);
    canvas.endDraw();
  //save button
  if(uiButtonPressed==0 && mouseX>80 && mouseX<120 && mouseY>315 && mouseY<335)
    selectOutput("pick a name","saveImage");
  //load button
  if(uiButtonPressed==0 && mouseX>80 && mouseX<120 && mouseY>285 && mouseY<315)
    selectInput("load a image","loadImage");
  //stamp
  if(mouseX>34 && mouseX<125 && mouseY>369 && mouseY<470 && stampON==false){
    stampON=true;
  }else{
    if(mouseX>34 && mouseX<125 && mouseY>369 && mouseY<470 && stampON==true)
    stampON=false;
  }
}
