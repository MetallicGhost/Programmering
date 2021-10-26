//opgave 1
String s = "Hej med dig";
for (int i =0; i<s.length(); i++) {
  if (i==4)
    println(s.charAt(i));
}
//opgave 2
for (int i = 0; i<=30; i++) {
  if (i>=10&&i<=20) {
    println(i);
  }
}
//opgave 3
int i =0;
String Tekst = "Hej med dig!";
int x = 0;
Tekst = "Dette er en sætning som indeholder mange e'er. Men hvor mange er der?";
for (i = 0;i < Tekst.length();i++) {
  if (Tekst.charAt(i) == 'e') {
   x++;
  }
}
println("(3) Teksten indeholder",x,"e'er");
//opgave 4
Tekst = "Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)";
int[] positions = {39,19,41,6,4,16,6,4,16,35,95,41,48,95};
for (i = 0;i < positions.length;i++) {
  println(Tekst.charAt(positions[i]),"(",positions[i],")");
}
//opgave 5
println("Længden af tidligere brugte sætning:",Tekst.length());
//opgave 6
int start = 83;
int slut = Tekst.length();
String newString = "";
//opgave 6
for (i = 0;i < slut;i++) {
  if (i >= start) {
    newString += Tekst.charAt(i);
  }
}
println("(6) '",newString,"'");
//opgave 7
start = 83;
slut = 85;
newString = "";
for (i = 0;i < slut;i++) {
  if (i >= start) {
    newString += Tekst.charAt(i);
  }
}
println("(7) '",newString,"'");
//opgave 8
println("(8)",Tekst.toUpperCase());
//opgave 9
println("(9)",Tekst.toLowerCase());
