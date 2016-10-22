// coords.pde

public String coord(int x, int y) {
  return ""+x+":"+y;
}
public int coordX(String c) {
  return Integer.parseInt(c.split(":")[0]);
}
public int coordY(String c) {
  return Integer.parseInt(c.split(":")[1]);
}
public void setStructure(int x, int y, String name) {
  VisualElement ve = new VisualElement(x, y, getStructureByName(name));
  map.put(coord(x, y), ve);
}