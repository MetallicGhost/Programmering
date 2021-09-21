int r=0;
PImage img;
void setup() {
  size(600, 600);
  loop();
  img = loadImage("https://bnfarver.dk/7624-thickbox_default/tapet-ta-fototapet-PSH094-VD4.jpg");
}
void draw() {
  background(img);

  translate(0+r, 0); // bevæger baggrunden fremad
  r++;
  if (r>width+100) { // for at få den til at tegne nye skyer nulstiller jeg r
    r=0;
  }
  for (int i =0; i < width+700; i++) { // for at undgå at skyerne bare forsvinder, er jeg nød til at forlænge width
    if (i % 700==0) {
      strokeWeight(8);
      pushMatrix();//cirkel 1
      fill(255, 0, 0);
      translate(-10, 350);
      rotate(frameCount/50.0);
      circle(0, 0, 140);
      popMatrix();//stop cirkel 1
      strokeWeight(4);
      fill(0, 0, 0);
      pushMatrix();//linje nummer 1
      translate(-10, 350);
      rotate(frameCount/50.0);
      line(-50, -50, 50, 50);
      popMatrix();//stop linje 1
      pushMatrix();//linje nummer 2
      translate(-10, 350);
      rotate(frameCount/50.0);
      line(50, -50, -50, 50);
      println(frameRate);// fortæller mig frameraten
      popMatrix();//stop linje 2
      pushMatrix();//cirkel 2
      fill(0, 0, 0);
      translate(-10, 350);
      rotate(frameCount/50.0);
      circle(0, 0, 5);
      popMatrix();//stop cirkel 2
    }
  }
}
