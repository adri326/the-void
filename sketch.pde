public void setup() {
  background(0);
  fill(255);
  int textsize = 16;
  textSize(textsize);
  text("Starting...", 4, textsize);
  String[] ressourcesRaw = loadStrings("ressources.list");
  String[] structuresRaw = loadStrings("structures.list");
  if (ressourcesRaw != null) {
    ressources = new Ressource[ressourcesRaw.length];
    for (int i = 0; i < ressourcesRaw.length; i++) {
      ressources[i] = new Ressource(ressourcesRaw[i]);
    }
  } else {
    text("Error while loading ressources: file empty or not present", 4, textsize*2);
    noLoop();
  }
  timer.start();
}
public void draw() {
  
}