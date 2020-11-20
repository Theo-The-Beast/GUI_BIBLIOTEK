// Her er min class
 class Button{
  
  // Her ses mine variabler
  String titel;
  float x,y,w,h;
  PApplet p;
  Action a;
  
  // Her ses min constructor
  Button(int x , int y, int w, int h, String t, PApplet p){ 
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    titel = t;
    this.p = p;
  }
  
  // Dette er min addAction metode
  void addAction(Action a){
    this.a=a;
  }
  
  // Dette er min display metode, der viser alt på skærmen
  void display(){
    p.rect(x,y,w,h);
    p.fill(0);
    p.text(titel,x+70,y+30);
    p.fill(255);
  }

// Dette er min click metode, som bruges til at trykke på knapperne
  void click(){
    if(p.mouseX>x && p.mouseX <x+w && p.mouseY>y && p.mouseY <y+h) {
       a.execute();
      }
      
    }
  }
  
