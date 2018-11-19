class Ware {
  PVector location;
  PVector velocityx;
  PVector velocityy;

  Ware() { //initial conditions
    location = new PVector(250, 250);
    velocityx  = new PVector(1, 0);
    velocityy = new PVector(0, 1);
  }

  void render() { //draws (repeatedly) the object
    ellipse(location.x, location.y, 20, 20);
    stroke(255,0,0);
  }

  void move(Phone p) { //for ware to move to the phone
    if (this.location.x > p.location.x) {
      location.sub(velocityx);
    }
    if (this.location.x < p.location.x) {
      location.add(velocityx);
    }
    if (this.location.y > p.location.y) {
      location.sub(velocityy);
    }
    if (this.location.y < p.location.y) {
      location.add(velocityy);
    }
    
    
  }
}
