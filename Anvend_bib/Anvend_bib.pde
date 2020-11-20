

GUI_Bibliotek GUI = new GUI_Bibliotek();
GUI_Bibliotek.Button buttonTerning6 = (GUI).new Button(10, 10, 150, 50, "Slå med en 6-sidet \n terning",this);
GUI_Bibliotek.Button buttonTerning10 = (GUI).new Button(340, 10, 150, 50, "Slå med en 10-sidet \n terning",this);
GUI_Bibliotek.Button buttonTerning16 = (GUI).new Button(170, 100, 150, 50, "Slå med en 16-sidet \n terning",this);
GUI_Bibliotek.terning t = (GUI).new terning(this);


//Button buttonTerning6 = new Button(10, 10, 150, 50, "Slå med en 6-sidet \n terning");
//Button buttonTerning10 = new Button(340, 10, 150, 50, "Slå med en 10-sidet \n terning");
//Button buttonTerning16 = new Button(170, 100, 150, 50, "Slå med en 16-sidet \n terning");
//terning t = new terning();

int sum;
int terningeKast;


void setup() {
  size(500, 300); 

  buttonTerning6.addAction(new GUI_Bibliotek.Action() {   
    public void execute() {
      t.terningKvalm(1, 6);
      sum = GUI.sum;
      terningeKast = GUI.terningeKast;
    }
  }
  );

  buttonTerning10.addAction(new GUI_Bibliotek.Action() {   
    public void execute() {
      t.terningKvalm(1, 10);
      sum = GUI.sum;
      terningeKast = GUI.terningeKast;
    }
  }
  );

  buttonTerning16.addAction(new GUI_Bibliotek.Action() {   
    public void execute() {
      t.terningKvalm(1, 16);
      sum = GUI.sum;
      terningeKast = GUI.terningeKast;
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
