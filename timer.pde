// timer.pde

public Thread timer = new Thread(new Runnable() {
  public void run() {
    while (true) {
      sleep(1000);
    }
  }
  private void sleep(int t) {
    try {
      timer.sleep(t);
    } catch (Exception e) {}
  }
});