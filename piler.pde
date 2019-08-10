class piler {
  
  //initialization
  int scr;
  PVector siza,sizb,sizc,posa,posb,posc;
  float vel;
  boolean jmp = true,scTr = true;
  int ran1 =(int) map(height,his,hib,-80,-130);
  int ran2 =(int) map(height,his,hib,80,130);
  
  
  //Setup
  piler(){
    siza = new PVector(100,map(height,600,1020,400,900));
    sizb = new PVector(100,200);
    sizc = new PVector(100,800);
    
    posa = new PVector( width+(width/2) , random(ran1,ran2) );
    posb = new PVector( posa.x    , posa.y + (siza.y/2) + (sizb.y/2) );
    posc = new PVector( posa.x    , posb.y + (sizb.y/2) + (sizc.y/2) );
    
    vel = map(width,wids,widb,3.5,9);
  }
  
  
  //Visualization
  void display(){
    noStroke();
    fill(10);
    rect(posa.x,posa.y,siza.x,siza.y);
    
    noStroke();
    fill(10);
    rect(posc.x,posc.y,sizc.x,sizc.y);
  }
  
  
  //Game Update
  void update(){
    posa.x -= vel;
    posb.x -= vel;
    posc.x -= vel;
    
    if(posa.x < -50){
      posa.y = random(ran1,ran2);
      posa.x = width+100;
      
      posb.y = posa.y + (siza.y/2) + (sizb.y/2);
      posc.y = posb.y + (sizb.y/2) + (sizc.y/2);
    
      posb.x = posa.x;
      posc.x = posb.x;
    }
    
   
    //Score
    if(posb.x <= width/2 + vel/2 && posa.x >= width/2 - vel/2){
      scr = 1;
    } else{
      scr = 0;
    }
    
    vel += 0.0005;
  }
  
  
  //Colution for Game_Over
  Boolean colt(double a,double b){
    if(a >= posa.x - 50 && a <= posa.x + 50){
      if(b-30 >= posb.y - (sizb.y/2) && b+30 <= posb.y + (sizb.y/2)){
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }
  
  
  //Other
  void posX(float a){
    posa.x=a;
    posb.x=posa.x;
    posc.x=posb.x;
  }
  
}
