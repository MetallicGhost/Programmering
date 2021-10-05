void setup() {
  size (600, 600);
  noLoop();
}
void draw() {  //Laver 4 frames
  frameFunction(0, 0); //Frame 1
  frameFunction(300, 0); //Frame 2
  frameFunction(0, 300); //Frame 3
  frameFunction(300, 300); //Frame 4
  //Indsætter 8 aliens
  //Frame 1
  lavAlien (60, 0);
  lavAlien (-60, 0);
  //Frame 2
  lavAlien(360, 0);
  lavAlien(240, 0);
  //Frame 3
  lavAlien (60, 300);
  lavAlien(-60, 300);
  //Frame 4
  lavAlien(360, 300);
  lavAlien(240, 300);
  //Titel
  textSize(32);
  fill(0, 0, 0);
  text("The High Council", 190, 310);
}
// Tegner alien
void lavAlien(int x, int y) {
  // Krop
  fill(0, 0, 0);
  rect(125+x, 120+y, 50, 100);
  // Hoved
  strokeWeight(2);
  fill(255, 255, 255);
  circle(150+x, 75+y, 100);
  // Øje
  fill(0, 0, 0);
  ellipse(125+x, 75+y, 25, 50);
  ellipse(175+x, 75+y, 25, 50);
  // Navn
  textSize(30);
  text("Member", 100+x, 250+y);
}
// Laver frames bag aliens
void frameFunction(int x, int y ) {
  rect(10+x, 10+y, 280, 280);
}
