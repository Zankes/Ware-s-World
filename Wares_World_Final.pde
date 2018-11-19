ArrayList<Phone> p = new ArrayList<Phone>();
Ware w;

void setup() {
  size(500, 500);


  for (int i = 0; i < 500; i++) { //creating all the iterations of phone class
    p.add(new Phone());
  }
  w = new Ware();
}
    

void draw() {
  background(200);
    w.render();
  
  if( p.size() > 0) {
  
    Phone nearestPhone;
    nearestPhone = p.get(0);
    
    float nearestDist;
    int nearIndex = 0;
    println(p.size());
    
    nearestDist = dist(p.get(0).location.x, p.get(0).location.y, w.location.x, w.location.y);
    
  for (int i = 0; i < p.size(); i++) { //actually drawing the phones - and finding smallest?
    if ( dist(nearestPhone.location.x, nearestPhone.location.y, w.location.x, w.location.y) > dist(p.get(i).location.x, p.get(i).location.y, w.location.x, w.location.y)) {
      nearestDist = dist(p.get(i).location.x, p.get(i).location.y, w.location.x, w.location.y);
      nearestPhone = p.get(i);
      nearIndex = i;
      //go through array list p and sort the location.x and location.y of nearest phone and make it item at index 0
    }
    p.get(i).render();
  }
  w.move(nearestPhone);
  //make phone disappear when ware touches it
      if ( dist(nearestPhone.location.x, nearestPhone.location.y, w.location.x, w.location.y) < 5) {
        p.remove(nearIndex);
      }
  }
}
