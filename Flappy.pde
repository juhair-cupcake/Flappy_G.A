//--------------Credits--------------
/*
Thank you for Nothing..
All Credits for Error6251(Juhair), some for Google.
Created by Juhair Islam.
Made in Bangladesh, Made with Processing...
*/
//------------Codes-------------


//Basic value
int i,j,scr=0,panel=0,gen=0,MaxScor=0,BirdNum=5;
int wids=400,widb=4000,his=600,hib=1020;


//Build Objects
ScStart start;
ScEmpty empty;
ScGame game;
ScGA ai;
ScScore score;
ScPno pno;

//--------------Setup-----------


void setup(){
  //size(400,600);
  fullScreen();
  
  rectMode(CENTER);
  textAlign(CENTER,CENTER);
  
  //Panel Load
  empty = new ScEmpty();
  if(panel == 0){
    start = new ScStart();
  }else if(panel == 1){
    game = new ScGame();
  }else if(panel == 2){
    score = new ScScore();
  }else if(panel == 3){
    pno = new ScPno();
  }else if(panel == 4){
    ai = new ScGA();
  }
  
}


//--------------Show on Window--------------


void draw(){
  //Always
  background(255);
  
  //--------------Start_Manu--------------
  
  if(panel == 0){
    start.display();
    
    if( start.next() > 0 ){
      empty.display();
      
      panel = start.next();
      setup();
    }
    if( empty.next() ){
      setup();
    }
  
  //--------------Game_Manu--------------
  
  }else if(panel == 1){
    game.display();
    
    if( game.next() ){
      scr=game.scr;
      panel = 2;
      setup();
    }
  
  //--------------Score_Manu--------------
  
  }else if(panel == 2){
    score.display(scr);
    
    if( score.next() ){
      empty.display();
    }
    if( empty.next() ){
      panel=0;
      setup();
    }
  
  //--------------Bird_No--------------
  
  }else if(panel == 3){
    pno.display();
    
    if( pno.next() ){
      empty.display();
    }
    if(empty.next()){
      panel = 4;
      setup();
    }
  
  //--------------AI_Manu--------------
  
  }else if(panel == 4){
    ai.display();
    
    if( ai.next() ){
      panel = 0;
      setup();
    }
  }
}




//--------------Error6251--------------
