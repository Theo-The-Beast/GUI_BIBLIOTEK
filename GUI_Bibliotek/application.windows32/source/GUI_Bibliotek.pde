Button buttonTerning6 = new Button(10, 10, 150, 50, "Slå med en 6-sidet \n terning",this);
Button buttonTerning10 = new Button(340, 10, 150, 50, "Slå med en 10-sidet \n terning",this);
Button buttonTerning16 = new Button(170, 100, 150, 50, "Slå med en 16-sidet \n terning",this);
terning t = new terning(this);

int sum;
int terningeKast;
PApplet p;

void setup() {
  size(500, 300); 

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

void draw() {
  clear();
  buttonTerning6.display();
  buttonTerning10.display();
  buttonTerning16.display();

  fill(255);
  textAlign(CENTER);
  text("Du har kastet " + terningeKast, width/2, 200);
  text("Samlet sum    " + sum, width/2, 250);
}

void mousePressed() {
  buttonTerning6.click();
  buttonTerning10.click();
  buttonTerning16.click();
}
