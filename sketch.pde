public void setup() {
  background(0);
  fill(255);
  int pos = 0;
  textSize(16);
  log_("Starting...", pos++);
  String[] ressourcesRaw = loadStrings("ressources.list");
  String[] structuresRaw = loadStrings("structures.list");
  if (ressourcesRaw != null) {
    ressources = new Ressource[ressourcesRaw.length];
    for (int i = 0; i < ressourcesRaw.length; i++) {
      ressources[i] = new Ressource(ressourcesRaw[i]);
      log_("Loaded "+ressourcesRaw[i], pos++);
    }
  } else {
    log_("Error while loading ressources: file empty or not present", pos++);
    noLoop();
  }
  if (structuresRaw != null) {
    structures = new Structure[structuresRaw.length];
    String[] names, exchanger;
    int[] amount;
    for (int i = 0; i < structuresRaw.length; i += 2) {
      exchanger = structuresRaw[i+1].split(" ");
      names = new String[(exchanger.length)/2];
      amount = new int[(exchanger.length)/2];
      for (int j = 0; j < (exchanger.length)/2; j += 1) {
        names[j] = exchanger[j*2];
        amount[j] = Integer.parseInt(exchanger[j*2+1]);
      }
      structures[i] = new Structure(structuresRaw[i], names, amount);
      log_("Loaded "+structuresRaw[i], pos++);
    }
  } else {
    log_("Error while loading structures: file empty or not present", pos++);
    noLoop();
  }
  timer.start();
}
public void draw() {
  
}
public void log_(String t, int pos) {
  text(t, 8, pos*16+24);
}