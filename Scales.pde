int diam = 50;
int g;
int r;
int b;
int a;
int c;
int d;
int e;
int f;
int h;
int newDiam = 0;
int rand = 1;
int armDiam = 0;
boolean eyeSore = false;
boolean nonEyeSore = false;
int lineSmall = 0;
int sNewDiam = 0;
int ellX = 0;
int ellY = 0;
int move = 0;




void setup() {
  size(1000,500);  //feel free to change the size
  fill(0,0,0);
  //rect(0,0,750,500);
  //noLoop(); //stops the draw() function from repeating
}
void draw() {
  frameRate(rand);
  background(255,255,255);
  //text(mouseX, 90, 50);
  //text(" , ", 110, 50);
  //text(mouseY, 120, 50);
  //scale(50,50);

  for(int x = -205; x < 1200; x = x + 70){
    for (int y = 25; y < 500; y = y  + 80){
      scale(x,y);
    }
  }

  for(int x = -105; x < 1200; x = x + 70){
    for (int y = 25; y < 500; y = y  + 80){
      scale(x,y);
    }
  }
  for(int x = 0; x < 1200; x = x + 70){
    for (int y = 0; y < 500; y = y  + 80){
      scale(x,y);
    }
  }



}
void scale(int x, int y) {
   textSize(50);
   fill(0,0,0);
   text(rand, 120, 50);
   noStroke();
   strokeWeight(1);
  int ellX = x;
  int ellY = y;
  if(eyeSore == false){
    r = (int)((Math.random()*255)+1);
    g = (int)((Math.random()*255)+1);
    b = (int)((Math.random()*255)+1);
    a = (int)((Math.random()*255)+1);
    c = (int)((Math.random()*255)+1);
    d = (int)((Math.random()*255)+1);

  }
    if (key == 'j' || key == 'J'){
      r = (int)((Math.random()*255)+1);
      g = (int)((Math.random()*255)+1);
      b = (int)((Math.random()*255)+1);
      a = (int)((Math.random()*255)+1);
      c = (int)((Math.random()*255)+1);
      d = (int)((Math.random()*255)+1); 
      e = (int)((Math.random()*255)+1);
      f = (int)((Math.random()*255)+1);
      h = (int)((Math.random()*255)+1);
  }
  fill(r,g, b);
  stroke(a,c,d);
  rect(x,y,diam+20,diam);


  noStroke();
  rect(x+25,y+50,diam/2,diam/2);
  triangle(x,y+50,x+25,y+50,x+25,y+75);
  triangle(x+50,y+50,x+70,y+50,x+50,y+75);
  stroke(0,0,0);
  if(eyeSore == false){
    e = (int)((Math.random()*255)+1);
    f = (int)((Math.random()*255)+1);
    h = (int)((Math.random()*255)+1);
  }
  stroke(e,f,h);
  strokeWeight(5);
  line(x + 65,y + 50,x + 50,y + 70);
  line(x + 25,y + 70,x + 50,y + 70);
  line(x + 5,y + 50,x + 25,y + 70);
  
  line(x + 65,y - 50,x + 50,y - 70);
  line(x + 25,y - 70,x + 50,y - 70);
  line(x + 5,y - 50,x + 25,y - 70);
 
  line(x + 45,y +60,x + 60,y + 45);
  line(x + 30,y + 60,x + 45,y + 60);
  line(x + 15,y + 45,x + 30,y + 60);
  
  line(x + 45,y - 60,x + 60,y - 45);
  line(x + 30,y - 60,x + 45,y - 60);
  line(x + 15,y - 45,x + 30,y - 60);
  
  fill(255,255,255);
 
  line(x + 37.5,y + 50,x + 50,y + 40);
  line(x + 37.5,y + 50,x + 25,y + 40);

  line(x + 37.5,y - 50,x + 50,y - 40);
  line(x + 37.5,y - 50,x + 25,y - 40);
  fill(255,255,255);
 

  if(eyeSore == true){
  stroke(0,0,0);
  fill(0,0,0);
  rect(x+move,y, newDiam+20, newDiam);
  ellipse(ellX+35+move,ellY+50,sNewDiam+20,sNewDiam);
  fill(135,206,250);
  noStroke();
  rect(ellX-200+move,ellY+1, newDiam + 20, newDiam);
  ellipse(x+35 + 0.5 + move,y+50,sNewDiam+19,sNewDiam);

    }
    strokeWeight(1);
  if (key == 'l' || key == 'L'){
     eyeSore = true;
     if (newDiam < 50){
       newDiam = newDiam + 2;
     }
     if (newDiam == 50 && (sNewDiam < 50)){
       sNewDiam = sNewDiam + 2;

     }


  }


     if (nonEyeSore == true){
     if (sNewDiam >= -2){
       sNewDiam = sNewDiam - 2;
     }
      if (newDiam > 0 && sNewDiam < 0){
       newDiam = newDiam - 2;
        if (sNewDiam <= 0){
         sNewDiam = -2;
       }
     }

  }




  }
 


public void keyPressed(){
  if (key == 'l' || key == 'L'){
    rand = (int)((Math.random()*26)+2);
    System.out.println(rand);
  }
  if (key == 'j' || key == 'J'){
    nonEyeSore = true;
    move = -10000;
}

  if (key == ' '){
    rand = 1;
  }
  System.out.println(rand);

}
