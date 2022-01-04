// til server/client delen taget fra Processing.org  //<>//
import processing.net.*; 
Client myClient; 
int dataIn; 

int[][] bingoPlade = new int[9][3];

// server del start

// server del slut

void setup() {

  // generer bingoPlade
  bingoPlade = lavBingoPlade();
  // fjerner de felter som skal være blanke
  blokerFelter();
  // sæt størrelse på canvas
  size(600, 600);
  // udskriv bingoPlade til skærm
  udskriv();
  
  
  // lav bingoplade til String
  println("***********");
  println("Benjamin"+exportToString(bingoPlade));
  
  // connect til server
    //***********
  myClient = new Client(this, "127.0.0.1", 5204);
  // log på server
  myClient.write("Benjamin,"+exportToString(bingoPlade));
  //***********

  // log på server  
  
}

void draw() {
  // Husk! sætter vi bagground skal vi tegne pladen hver gang
  
  
  // lyt efter nyt tal fra server
if (myClient.available() > 0) { 
    dataIn = myClient.read();
    // tilføj til det array hvor vi gemmer tal 
  }

  
  // søg efter trukket tal i vores bingoplade
    if(findNumber(bingoPlade,dataIn)){
   text("FUCK!",300,300);
  }

  
  
  // hvis vi finder noget skriv til skærm
  
}


  // generer bingoPlade
int[][] lavBingoPlade(){
  int[][] bp = new int[9][3];
  for (int i =0; i<9; i++) {
    bp[i] = sorter(tilfaeldigeTal(i, 3,1,10));
  }
  return bp;
}



int[] tilfaeldigeTal(int index, int size,int min, int max) {
  // funktionen virker ikke når vi genererer 4 tal. vi risikerer at det første og sidste tal er ens.
  // jeg har derfor skrev funktionen om
  // Det er lettere at lave tre tilfældige tal og test om der er dubletter. Hvis der er skal der laves tre nye tal.
  
  // hvis vi opdager to ens tal skal den lave finde tre nye tal 
  boolean notAlike = true;
  //opret er array af int
  int[] tal = new int[size];

while(notAlike){
  // vi skal blive ved med at lave 3 nye tal så længe notAlike er true. Så vi er nød til at starte med den false.
  notAlike = false;
  // flyld array med tal 
  for (int j=0; j<tal.length; j++) {
    tal[j] = (int)random(min, max+1)+10*index;
  }
  // sorter array for at få dublettter til at stå vedsiden af hianden
  tal = sorter(tal);

  // find og ret dubletter 
  for (int i =0; i<tal.length; i++) {
    for (int j=i+1; j<tal.length; j++) {
      if (tal[i] == tal[j]) {
        notAlike = true;
      }
    }
  }
}

//returner array
return tal;
}

int[] sorter(int[] tal) {
  int i=0;
  //for (int i =0; i <tal.length-1; i++) {
  while (i<2) {
    if (tal[i]>tal[i+1]) {
      int temp = tal[i];
      tal[i]=tal[i+1];
      tal[i+1]=temp;
      i=0;
    } else {
      i++;
    }
  }
  return tal;
}

void blokerFelter() {
  int[] fjernes = new int[4];

  for (int j=0; j<3; j++) {
    // hent 4 tilfældige tal som ikke er større end 8
    fjernes = tilfaeldigeTal(0, 4,0,8);
    
    // gennemløb rækken i bingopladen og sæt nuller ind 
    for (int i=0; i<fjernes.length; i++) { //<>//
          println(i+" "+j);
      bingoPlade[fjernes[i]][j]=0;
    }
  }
}

void udskriv() {
  textSize(22);
  for (int i =0; i<9; i++) {
    for (int j =0; j<3; j++) {
      if(bingoPlade[i][j] != 0){
      text(bingoPlade[i][j], 100+i*50, 100+j*30);
      }
    }
  }
}

// String exportToString(){
//Integer.toString

String exportToString(int[][] bp){
String result=""; //<>//
for (int i=0;i<bp.length;i++){
  for(int j=0;j<bp[i].length;j++){
  result = result + ","+str(bp[i][j]);
  }

}

return result;

}




// int concertFromString(){

  
  //Integer.valueOf(s);
  
  // try - cacth(Exeption e)
  


// boolean findNumber(){

//        rect(100+i*50, 100+j*30,25,-25);


boolean findNumber(int[][] bp, int tal){
  boolean found = false;
  for (int i =0; i<bp.length; i++) {
    for (int j=0; j<bp[i].length; j++) {
      if(tal == bp[i][j] && tal != 0){
        println(tal+" " +bp[i][j]);
        found=true;
        rect(100+i*50, 100+j*30,25,-25);

      }
    }
  }
  return found;

}
