PVector mago;
PVector tesoro;

void setup() {
  size(400, 400);
  mago = new PVector(width/2, height/2);
  tesoro = new PVector(100, 100);
}

void draw() {
  background(255);
  
  mago.x = mouseX;
  mago.y = mouseY;
  
  PVector direccion = PVector.sub(tesoro, mago);
  
  //mago
  fill(255, 0, 0);
  line(mago.x, mago.y, mago.x+10, mago.y);
  
  //tesoro
  fill(0, 0, 255);
  ellipse(tesoro.x, tesoro.y, 20, 20);
   

  if (mago.y < tesoro.y) {
    fill(0);
    textAlign(CENTER);
    text("El mago está adelante del tesoro", width/2, 20);
  } else {
    fill(0);
    textAlign(CENTER);
    text("El mago está detrás del tesoro", width/2, 20);
  }
}
