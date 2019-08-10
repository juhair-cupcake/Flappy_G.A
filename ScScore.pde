class ScScore{
  //Initialization
  PVector pBox,sBox;
  
  
  //Setup
  ScScore(){
    pBox = new PVector(width/2,height/2 + 200 );
    sBox = new PVector(100,100);
  }
  
  
  //Visualization
  void display(int scr){
    
    noStroke();
    fill(155);
    rect(width/2,height/2,width,height/4);
    
    textSize(100);
    fill(0);
    text(scr,width/2,height/2);
    
    fill(155);
    rect(pBox.x,pBox.y,sBox.x,sBox.y);
    textSize(30);
    fill(0);
    text("Back",pBox.x,pBox.y);
  }
  
  
  //Next Panel
  Boolean next(){
    if(overRect() && mousePressed ){
      return true;
    } else {
      return false;
    }
  }
  
  
  //Other
  Boolean overRect(){
    if(mouseX >= pBox.x - (sBox.x/2) && mouseX <= pBox.x + (sBox.x/2) &&
       mouseY >= pBox.y - (sBox.y/2) && mouseY <= pBox.y + (sBox.y/2)){
      return true;
    } else {
      return false;
    }
  }
  
}
