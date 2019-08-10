class DNA{
  
  // inetialize
  float fitness,px,py,loc;
  float d1,d2;
  
  //Object
  player pl;
    
  DNA(){
    d1 = random(0,height);
    d2 = random(-width,width);
    
    pl = new player(width/2,100,true);
    
  }
  
  
  DNA crossover(DNA a){
    DNA child = new DNA();
    
    int nx = (int)random(0,10);
    
    if(nx<4){
      child.d1 = (d1 + a.d1)/2;
    
    } else if(nx<7){
      child.d2 = (d2 + a.d2)/2;
    
    } else if(nx==7){
      child.d1 = d1;
    
    } else if(nx==8){
      child.d2 = d2;
    
    } else if(nx==9){
      child.d1 = a.d1;
    
    } else {
      
      child.d2 = a.d2;
    }
    
    return child;
  }
  
  void mutation(int a){
    float mut = random(-a,+a);
    d1 += mut/(10*fitness);
    mut = random(-a,+a);
    d2 += mut/(10*fitness);
  }
  
  void fit(int a){
    fitness=pow(8,a);
  }
  
  void polLoc(float a){
    loc = a;
  }
   
  void update(){
    px = pl.pos.x;
    py = pl.pos.y;
    
    pl.display();
    pl.update();
    
    if(py >= loc - d1){
      pl.jump();
    }
  }
  
  
}
