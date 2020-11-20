
// Dette er min class, som gør terningerne til et objekt
class terning{
  PApplet p;
  
  terning(PApplet p){
    this.p=p;
  }
  
  
  // dette er min metode der fortæller terningerne hvad de skal
  void terningKvalm(int start, int slut){
  terningeKast = int(random(start, slut+1));
      sum += terningeKast;
  }
}
