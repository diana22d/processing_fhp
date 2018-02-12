/* map() / move mouse left-right to see a change of colour and forms*/

void setup() {
  size(600, 400);
  background(0);
  noStroke();
}
void draw() {
  float alpha=map(mouseX, 0, width, 150, 450); // range of movement 
  float beta=map(mouseX, 0, width, 77, 230); // range of color blue - pink
  float gamma=map(mouseX, 0, width, 230, 77); // range of color pink - blue
  if (mouseX<width/2) {
    background(beta, 143, 157);
    fill(gamma, 143, 157);
    ellipse(alpha, 185, 50, 50);
  } else {
    background(beta, 143, 157);
    fill(gamma, 143, 157);
    rect(alpha, 160, 50, 50);
  }
}