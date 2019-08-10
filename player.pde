class player {
  
  //Inatialization
  PVector siz,pos;
  float vel,acs;
  boolean jmp,AI;
  
  
  //Setup
  player(int a,float b,boolean c){
    siz = new PVector(60,60);
    pos = new PVector(a,b);
    acs = 0.8;
    jmp = true;
    AI = c;
  }
  
  
  //Visualization
  void display(){
    stroke(0);
    noFill();
    rect(pos.x,pos.y,siz.x,siz.y);
  }
  
  
  //Game Update
  void update(){
    pos.y+=vel;
    vel+=acs;
    
    //Stay on window
    if(pos.y < 0){
      pos.y = 0 + 30;
    } else if (pos.y > height){
      pos.y = height - 30;
    }
    
    
    //Jump
    if( ckJump() ){
      jump();
    }
    if(vel>1){
      jmp = true;
    }
    
  }
  
  //Jump Function
  void jump(){
    if(jmp){
      vel = -10;
      jmp = false;
    }
  }
  
  //check AI mode is on or off
  Boolean ckJump(){
    if( (mousePressed || (keyPressed && key == ' ')) && !AI ){
      return true;
    } else {
      return false;
    }
  }
  
}
