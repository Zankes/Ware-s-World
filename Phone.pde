class Phone {
  PVector location;
  PImage maxresdefault;

  Phone() {
    location = new PVector(floor(random(500)), floor(random(500)));
  }

  void render() {
    ellipse(location.x, location.y, 10, 10);
    stroke(0,0,0); 
  }
}
