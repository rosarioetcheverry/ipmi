PImage miImagen;

void setup(){
  size(800,400);
  miImagen = loadImage("cristo1.jpeg");
}

void draw(){
  background(21,116,222);
  image(miImagen, 0, 0, 400, 400);

  fill(230,225,210);

  rect(560,87,87,190);
 
  ellipse(606,70,37,45);
   
  quad(480,100,560,100,560,130,498,130);
  quad(647,100,727,100,709,130,647,130);
  
  noStroke();

  triangle(560,87,520,130,560,130);
  triangle(647,87,687,130,647,130);

  stroke(0);
 
  ellipse(470,107,29,15);
  ellipse(737,107,29,15);
  
  line(565,190,564,275);
  line(570,192,568,275);
  line(575,194,573,275);
  line(580,196,579,275);
  line(585,198,584,275);
  
  line(595,200,595,275);
  line(605,202,607,275);
  line(615,204,618,275);
  line(625,206,629,275);
  line(631,207,633,275);
  line(638,208,641,275);
  
  line(560,189,648,208);
  
  line(624,87,627,210);
  line(624,112,621,190);
  line(621,190,649,194);
  
  
  fill(100);

  rect(539,275,128,7);

  quad(530,283,677,283,686,361,518,361);

  textSize(30); 
  text((400 + mouseX) + " - " + mouseY, mouseX, mouseY);
}
