// husk lige kommentarer
// dette program tegner et ansigt


size(800,600);// sæt størrelse på canvas
strokeWeight(2); //tykkelse på streg
fill(255, 217, 135); // fyld farve 
circle(400,300,350); 
strokeWeight(16); //tykkelse på streg til .....
line(250, 150, 550, 150); // tegner skyggen på hatten 
fill(0,0,0);
rect(300,150,200,-130);
strokeWeight(2);
fill(255,255,255);
rectMode(RADIUS);
rect(350,250,45,45);
rect(450,250,45,45);
arc(400,355,200,135,0,PI,CHORD);
fill(255, 217, 135);
circle(400,300,100);
