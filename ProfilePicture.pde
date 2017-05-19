// modification of P_4_3_2_01.pde
// at https://github.com/generative-design/Code-Package-Processing-3.x/
//    blob/master/01_P/P_4_3_2_01/P_4_3_2_01.pde
// Licensed under the Apache License, Version 2.0

PFont font;
PImage img;
boolean showOriginal = false;
float cellSize = 5;
float scale = 2;
int imgWidth = 900;
int imgHeight = 1200;
String txt ="According to all known laws of aviation, there is no way a bee should be able to fly.";
int txtLength;
int currentLetter;
void settings() {
  size((int)(imgWidth*scale),(int)(imgHeight*scale));  
}

void setup() {
  noLoop();
  img = loadImage("kia_hatefav.jpg");
  println(img.width + " x " + img.height);
  txtLength = txt.length();
}

void draw() {
  background(240);
  textAlign(LEFT);
  noStroke();
  if (showOriginal) {
    image(img, 0, 0, imgWidth * scale, imgHeight * scale);
  } else {
    for(int y = 0; y<imgHeight; y += cellSize) {
      for(int x = 0; x<imgWidth; x += cellSize) { 
        currentLetter=(currentLetter+1)%txtLength;
        color c = img.pixels[y*imgWidth+x];
        int greyness = round(red(c) * 0.222 + green(c) * 0.707 + blue(c) * 0.071);
        fill(c);
        float xLoc = x * scale;
        float yLoc = y * scale;
        //float size = cellSize * scale;
        //float size=cellSize*scale*noise(x, y);
        float size=map(greyness, 0, 255, cellSize*scale, .5);
        // draw an ellipse at xLoc, yLoc, using 'size' for width and height
        //ellipse(xLoc, yLoc, size, size);
        textSize(cellSize*scale);
       text(txt.charAt(currentLetter), xLoc, yLoc);

      }
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    showOriginal = !showOriginal;
    redraw();
  }
}  
void keyReleased() {
  if (key == 's' || key == 'S') saveFrame("_##.png");
}
