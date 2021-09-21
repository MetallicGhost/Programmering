void setup() {
  size (600, 600);
  noLoop();
}
void draw() {  //laver 4 frames
  frameFunction(0, 0); //frame 1
  frameFunction(300, 0); //frame 2
  frameFunction(0, 300); //frame 3
  frameFunction(300, 300); //frame 4
  // insætter 8 aliens
  //frame 1
  alien (60, 0);
  alien (-60, 0);
  //frame 2
  alien(360, 0);
  alien(240, 0);
  //frame 3
  alien (60, 300);
  alien(-60, 300);
  //frame 4
  alien(360, 300);
  alien(240, 300);
  //titel
  textSize(32);
  fill(0, 0, 0);
  text("The High Council", 190, 310);
}
// tegner alien
void alien(int x, int y) {
  // krop
  fill(0, 0, 0);
  rect(125+x, 120+y, 50, 100);
  // hoved
  strokeWeight(2);
  fill(255, 255, 255);
  circle(150+x, 75+y, 100);
  // øje
  fill(0, 0, 0);
  ellipse(125+x, 75+y, 25, 50);
  ellipse(175+x, 75+y, 25, 50);
  // navn
  textSize(30);
  text("Member", 100+x, 250+y);
}
// laver frames
void frameFunction(int x, int y ) {
  rect(10+x, 10+y, 280, 280);
}
