class ScEmpty{  
  int x;
  Boolean locked = false;
  
  //Setup
  ScEmpty(){
    x=0;
  }
  
  //Vizualition
  void display(){
    x++;
    
    noStroke();
    fill(155);
    rect(width/2,80,width,160);
    
    textSize(60);
    fill(0);
    text("Error6251",width/2,80);
    
    }
  
  
  //Next Panel
  boolean next(){
    if( x>7 ){
      return true;  
    } else {
      return false;
    }
  }
  
}
