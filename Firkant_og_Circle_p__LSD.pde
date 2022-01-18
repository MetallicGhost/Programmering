// initiering af variablen f
Firkant f;

void setup() {
  size (600, 400);
}

void draw() {
  // initiering af objektet f
  f = new Firkant();
  // kald metoden generate som laver en tilfældig x og y pos
  //f.generate();
  // tegner firkanten på canvas
  float tal=(round(random(0, 2)));
  println(tal);
  if(tal ==1) {
    f.drawFirkant();
  } else {
    f.drawCircle();
  }
}
class Firkant {
  // klassens attributter/ tilstand
  float x, y;
  color rando = color(random(255), random(255), random(255));
  //konstroktøren
  Firkant() {
    this.x = random(600);
    this.y = random(400);
  }

  // klassens metoder

  // find to tilfældige værdier inden for canvas størrelsen
  void generate() {
  }

  // tegn firkant på canvas
  void drawFirkant() {
    fill(rando);
    square(x, y, 100);
  }
  void drawCircle() {
    fill(rando);
    circle(x, y, 100);
  }
}
