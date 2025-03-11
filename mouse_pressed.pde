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
}
