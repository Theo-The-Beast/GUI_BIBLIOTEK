import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class GUI_Bibliotek extends PApplet {

Button buttonTerning6 = new Button(10, 10, 150, 50, "Slå med en 6-sidet \n terning",this);
Button buttonTerning10 = new Button(340, 10, 150, 50, "Slå med en 10-sidet \n terning",this);
Button buttonTerning16 = new Button(170, 100, 150, 50, "Slå med en 16-sidet \n terning",this);
terning t = new terning(this);

int sum;
int terningeKast;
PApplet p;

public void setup() {
   

  buttonTerning6.addAction(new Action() {   
    public void execute() {
      t.terningKvalm(1, 6);
    }
  }
  );

  buttonTerning10.addAction(new Action() {   
    public void execute() {
      t.terningKvalm(1, 10);
    }
  }
  );

  buttonTerning16.addAction(new Action() {   
    public void execute() {
      t.terningKvalm(1, 16);
    }
  }
  );
}

public void draw() {
  clear();
  buttonTerning6.display();
  buttonTerning10.display();
  buttonTerning16.display();

  fill(255);
  textAlign(CENTER);
  text("Du har kastet " + terningeKast, width/2, 200);
  text("Samlet sum    " + sum, width/2, 250);
}

public void mousePressed() {
  buttonTerning6.click();
  buttonTerning10.click();
  buttonTerning16.click();
}
//Her ses mit interface
interface Action{
  public void execute();
}
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
  public void addAction(Action a){
    this.a=a;
  }
  
  // Dette er min display metode, der viser alt på skærmen
  public void display(){
    p.rect(x,y,w,h);
    p.fill(0);
    p.text(titel,x+70,y+30);
    p.fill(255);
  }

// Dette er min click metode, som bruges til at trykke på knapperne
  public void click(){
    if(p.mouseX>x && p.mouseX <x+w && p.mouseY>y && p.mouseY <y+h) {
       a.execute();
      }
      
    }
  }
  

// Dette er min class, som gør terningerne til et objekt
class terning{
  PApplet p;
  
  terning(PApplet p){
    this.p=p;
  }
  
  
  // dette er min metode der fortæller terningerne hvad de skal
  public void terningKvalm(int start, int slut){
  terningeKast = PApplet.parseInt(random(start, slut+1));
      sum += terningeKast;
  }
}
  public void settings() {  size(500, 300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "GUI_Bibliotek" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
