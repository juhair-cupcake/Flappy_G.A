class ScGame{
  
  //Basic Initialization
  int n = (int)map(width,wids,widb,1,12);
  Boolean rest = false;
  int scr=0;
  
  //objects
  player p;
  piler[] pol = new piler[n];
  
  
  // GAME_ON
  ScGame(){
    p = new player( width/2 , 100 ,false);
    
    for(i=0;i<n;i++){
      
      pol[i] = new piler();
      
      if(i>0){
        pol[i].posX( pol[i-1].posa.x + 400 );
      }
      
    }
  }
  
  
  //Visualization
  void display(){
    p.update();
    p.display();
    
    for(i=0;i<n;i++){
      pol[i].update();
      pol[i].display();
      
      
      Boolean z = pol[i].colt( p.pos.x , p.pos.y);
      if(z){
         //Menu_Score
         rest = true;
      }
      
      scr += pol[i].scr;
    }
    
    pnt();
  }
  
  
  //Next panel
  Boolean next(){
    return rest;
  }
  
  
  //Others
  void pnt(){
    fill(155);
    rect(75,40,150,100);
    fill(0);
    text(scr,75,40);
  }
}
