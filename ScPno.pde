class ScPno{
  //Inetialization
  PVector pBox1,sBox1,pBox2,sBox2,pBox3,sBox3,pBox5,sBox5,pBox6,sBox6,pBox4,sBox4;
  
  //Setup
  ScPno(){
    //1
    sBox1 = new PVector(80,80);
    pBox1 = new PVector(width/2 -(sBox1.x/2+5) , height/2 - (sBox1.x));
    
    //2
    sBox2 = new PVector(sBox1.x,sBox1.y);
    pBox2 = new PVector(pBox1.x , pBox1.y + sBox1.y + 10);
    
    //3
    sBox3 = new PVector(sBox1.x,sBox1.y);
    pBox3 = new PVector(width/2 +(sBox3.x/2+5), height/2 - (sBox3.x) );
    
    //4
    sBox4 = new PVector(sBox1.x,sBox1.y);
    pBox4 = new PVector(pBox3.x , pBox3.y + sBox3.y + 10);
    
    //5
    sBox5 = new PVector(sBox1.x,sBox1.y);
    pBox5 = new PVector(pBox2.x , pBox2.y + sBox2.y + 10);
    
    //6
    sBox6 = new PVector(sBox1.x,sBox1.y);
    pBox6 = new PVector(pBox4.x , pBox4.y + sBox4.y + 10);
    
  }
  
  //Vizualition
  void display(){
    
    noStroke();
    fill(155);
    rect(width/2,80,width,160);
    
    textSize(60);
    fill(0);
    text("Bird Number",width/2,80);
    
    //1
    fill(155);
    rect(pBox1.x,pBox1.y,sBox1.x,sBox1.y);
    textSize(35);
    fill(0);
    text("3",pBox1.x,pBox1.y);
    
    //2
    fill(155);
    rect(pBox2.x,pBox2.y,sBox2.x,sBox2.y);
    textSize(35);
    fill(0);
    text("35",pBox2.x,pBox2.y);
    
    //3
    fill(155);
    rect(pBox3.x,pBox3.y,sBox3.x,sBox3.y);
    textSize(35);
    fill(0);
    text("100",pBox3.x,pBox3.y);
    
    //4
    fill(155);
    rect(pBox4.x,pBox4.y,sBox4.x,sBox4.y);
    textSize(35);
    fill(0);
    text("200",pBox4.x,pBox4.y);
    
    //5
    fill(155);
    rect(pBox5.x,pBox5.y,sBox5.x,sBox5.y);
    textSize(35);
    fill(0);
    text("60",pBox5.x,pBox5.y);
    
    //6
    fill(155);
    rect(pBox6.x,pBox6.y,sBox6.x,sBox6.y);
    textSize(35);
    fill(0);
    text("500",pBox6.x,pBox6.y);
  }
  
  
  //Next Panel
  Boolean next(){
    if(mousePressed){
      if( overRect1() ){
        BirdNum=3;
        return true;
      } else if( overRect2() ){
        BirdNum=35;
        return true;
      } else if( overRect3() ){
        BirdNum=100;
        return true;
      } else if( overRect4() ){
        BirdNum=200;
        return true;
      } else if( overRect5() ){
        BirdNum=60;
        return true;
      } else if( overRect6() ){
        BirdNum=500;
        return true;
      } else {
        return false;
      }
    } else {
      return false;
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
  
  Boolean overRect3(){
    if(mouseX >= pBox3.x - (sBox3.x/2) && mouseX <= pBox3.x + (sBox3.x/2) &&
       mouseY >= pBox3.y - (sBox3.y/2) && mouseY <= pBox3.y + (sBox3.y/2)){
      return true;
    } else {
      return false;
    }
  }
  
  Boolean overRect4(){
    if(mouseX >= pBox4.x - (sBox4.x/2) && mouseX <= pBox4.x + (sBox4.x/2) &&
       mouseY >= pBox4.y - (sBox4.y/2) && mouseY <= pBox4.y + (sBox4.y/2)){
      return true;
    } else {
      return false;
    }
  }
  
  Boolean overRect5(){
    if(mouseX >= pBox5.x - (sBox5.x/2) && mouseX <= pBox5.x + (sBox5.x/2) &&
       mouseY >= pBox5.y - (sBox5.y/2) && mouseY <= pBox5.y + (sBox5.y/2)){
      return true;
    } else {
      return false;
    }
  }
  
  Boolean overRect6(){
    if(mouseX >= pBox6.x - (sBox6.x/2) && mouseX <= pBox6.x + (sBox6.x/2) &&
       mouseY >= pBox6.y - (sBox6.y/2) && mouseY <= pBox6.y + (sBox6.y/2)){
      return true;
    } else {
      return false;
    }
  }
}
