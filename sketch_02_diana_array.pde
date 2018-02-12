/* array / arc shape concentrates on data of numsShapes*/

void setup() {

  size(500, 500);
  background(#6FA8B7);
}
void draw() {

  background(#6fa8f0);
  noStroke();

  int [] numsShape={5, 40, 55, 78, mouseY, 117, 160, 186, //array for position of rect and ellipse
    199, 210, 267, 295, 311, 345, 379, 397, 437, 458};

  for (int i=0; i<numsShape.length; i++) {

    rectMode(CENTER);
    rect(90, numsShape[i], i, i);

    ellipseMode(CENTER);
    ellipse(190, numsShape[i], random(i*-2, 2), i);

    arc(350, 120, 60, 60, radians(numsShape[4]), radians(numsShape[9])); //[4] - [9] distance = mouseY - 210
    arc(350, 220, 90, 90, radians(numsShape[4]), radians(numsShape[17])); //[4] - [17] distance = mouseY - 458 
    arc(350, 320, 60, 60, radians(numsShape[4]), radians(numsShape[13])); //[4] - [13] distance = mouseY - 345
  }
}