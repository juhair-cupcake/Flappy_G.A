class ScGA{
  
  //Basic Initialization
  int n = (int)map(width,wids,widb,1,12);
  int num=BirdNum;
  Boolean rest=false;
  int scr=0, die=0, nsiz=max(n,num), suc=0;
  int mutationRate = 1;
  PVector pBox,sBox;
  
  //objects
  ArrayList<DNA> mp;
  DNA[] bird = new DNA[num];
  piler[] pol = new piler[n];
  
  
  // GAME_ON
  ScGA(){
    mp = new ArrayList<DNA>();
    sBox = new PVector(100,70);
    pBox = new PVector(width - (sBox.x)/2 , height-(sBox.y)/2);
    
    for(i=0; i<nsiz ;i++){
      
      if(i<num){
        bird[i] = new DNA();
      }
      
      if(i<n){
        pol[i] = new piler();
        
        if(i>0){
          pol[i].posX( pol[i-1].posa.x + 400 );
        }
      }
      
    }
    
  }
  
  
  //Visualization
  void display(){
    for(i=0; i<nsiz ;i++){
      
      //player works
      if(i<num){
        bird[i].polLoc( pol[suc].posc.y );
        
        if(bird[i].px  > pol[suc].posc.x + pol[suc].vel + bird[i].d2){
          suc++;
        }
        if(suc == n){
          suc=0;
        }
        
        bird[i].update();
      }
      
      //Piler works
      if(i<n){
        pol[i].update();
        pol[i].display();
        
        for(j=0;j<num;j++){
          double ax=bird[j].pl.pos.x;
          double ay=bird[j].pl.pos.y;
          //Death
          Boolean z = pol[i].colt(ax , ay);
          if(z){
            bird[j].fit(scr);
            bird[j].pl.pos.x=-1000;
            die++;
          }
        }
        scr += pol[i].scr;
        if(scr>MaxScor){
          MaxScor = scr;
        }
    }
      
    //Quite Button
    fill(155);
    rect(pBox.x,pBox.y,sBox.x,sBox.y);
    textSize(40);
    fill(0);
    text("Exit",pBox.x,pBox.y);
      
    }
    
    Restart();
    pnt();
  }
  
  //Restart GaneTic MathErFucker 
  void Restart(){
    if(die >= num){
      mp.clear();
      
      // Get Max Fitness
      float maxFit = 0;
      
      for(i=0;i<num;i++){
        if(bird[i].fitness > maxFit){
          maxFit = bird[i].fitness;
        }
      }
      
      // natural Selection
      for(i=0;i<num;i++){
        
        if(bird[i].fitness>0){
          float fitness = map(bird[i].fitness,0,maxFit,0,1);
          int x = int(fitness * 500);
        
          for (int j = 0; j < x; j++) {
            mp.add(bird[i]);
          }
        } else if(num<50){
          mp.add(bird[i]);
        }
        
      }
      int siz = mp.size();
       
      //Pass DNA
      for(i=0;i<num;i++){
        
        DNA pA = mp.get( (int)random(0,siz) );
        DNA pB = mp.get( (int)random(0,siz) );
        
        DNA child = pA.crossover(pB);
        child.mutation(mutationRate);
        
        bird[i] = child;
      }
      
      gen++;
      
      setup();
      
    }
  }
  
  
  //Next panel
  boolean next(){
    if(mousePressed && overRect()){
        return true;
      } else {
        return false;
      }
  }
  
  
  //Others
  void pnt(){
    fill(155);
    rect(width/2,40,width,100);
    fill(0);
    
    textSize(45);
    text(scr,75,40);
    
    textSize(25);
    
    text("Highest Score:",width-165,25);
    text(MaxScor,width-45,25);
    
    text("Genaretion:",width-150,60);
    text(gen,width-45,60);
  }
  
  Boolean overRect(){
    if(mouseX >= pBox.x - (sBox.x/2) && mouseX <= pBox.x + (sBox.x/2) &&
       mouseY >= pBox.y - (sBox.y/2) && mouseY <= pBox.y + (sBox.y/2)){
      return true;
    } else {
      return false;
    }
  }
  
}
