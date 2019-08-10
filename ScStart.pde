class ScStart{
  //Inetialization
  PVector pBox1,sBox1,pBox2,sBox2;
  
  //Setup
  ScStart(){
    //1
    pBox1 = new PVector(width/2,height/2);
    sBox1 = new PVector(170,170);
    
    //2
    pBox2 = new PVector(width/2 , pBox1.y + sBox1.y+10);
    sBox2 = new PVector(170,170);
    
  }
  
  //Vizualition
  void display(){
    
    noStroke();
    fill(155);
    rect(width/2,80,width,160);
    
    textSize(60);
    fill(0);
    text("Flappy_Bitch",width/2,80);
    
    //1
    fill(155);
    rect(pBox1.x,pBox1.y,sBox1.x,sBox1.y);
    textSize(40);
    fill(0);
    text("Start",pBox1.x,pBox1.y);
    
    //2
    fill(155);
    rect(pBox2.x,pBox2.y,sBox2.x,sBox2.y);
    textSize(40);
    fill(0);
    text("G.A.",pBox2.x,pBox2.y);
  }
  
  
  //Next Panel
  int next(){
    if(mousePressed){
      if( overRect1() ){
        return 1;
      } else if( overRect2() ){
        return 3;
      } else {
        return 0;
      }
    } else {
      return 0;
    }
  }
  
  //Other
  Boolean overRect1(){
    if(mouseX >= pBox1.x - (sBox1.x/2) && mouseX <= pBox1.x + (sBox1.x/2) &&
       mouseY >= pBox1.y - (sBox1.y/2) && mouseY <= pBox1.y + (sBox1.y/2)){
      return true;
    } else {
      return false;
    }
  }
  
  Boolean overRect2(){
    if(mouseX >= pBox2.x - (sBox2.x/2) && mouseX <= pBox2.x + (sBox2.x/2) &&
       mouseY >= pBox2.y - (sBox2.y/2) && mouseY <= pBox2.y + (sBox2.y/2)){
      return true;
    } else {
      return false;
    }
  }
}
