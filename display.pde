// display.pde : where everything is displayed

float zoom = 1, sx = width/2, sy = height/2;
public void draw() {
  background(0);
  drawTiles();
}
public void mouseDragged() {
  sx -= (pmouseX-mouseX)*zoom;
  sy -= (pmouseY-mouseY)*zoom;
}
public void hex(float x, float y, float size) {
  final float wm = 0.5, hm = 0.85;
  fill(255);
  stroke(255);
  strokeWeight(4);
  line(x+size*wm, y-size*hm, x+size, y);
  line(x+size*wm, y+size*hm, x+size, y);
  line(x-size*wm, y-size*hm, x-size, y);
  line(x-size*wm, y+size*hm, x-size, y);
  line(x+size*wm, y+size*hm, x-size*wm, y+size*hm);
  line(x+size*wm, y-size*hm, x-size*wm, y-size*hm);
}
