// total columns of the pattern
int cols = 20;
// total rows of the pattern
int rows = 20;
// diameter of one big circle unit
float diameter;

void setup() {
  // create canvas
  size(800, 900);
  // calculate size for each circle
  diameter = 200;
  // set background color to pure black
  background(0);
  noStroke();
}

void draw() {
  // traverse every grid row
  for (int y = 0; y < rows; y++) {
    // traverse every grid column
    for (int x = 0; x < cols; x++) {
      
      // calculate center position of current circle
      float cx = x * diameter/3 + diameter / 2;
      // offset every other row to make staggered interlocking effect
      float cy = y * diameter/3 + diameter / 2;
      if(y % 2 == 1){
        cx += diameter / 2;
      }

      // draw alternating black & white concentric rings
      for(float r = diameter/2; r > 2; r -= 15){
        // draw white ring
        fill(255);
        circle(cx-200, cy-200, r);
        // draw black ring gap
        fill(0);
        circle(cx-200, cy-200, r - 8);
      }

    }
  }
  // no need to redraw the screen repeatedly
  noLoop();
}
