int depth = 0;

void setup() {
  size(400, 400);
  background(240);
}

void draw() {
  background(240);
  sierpinski(100, 300, 200, depth);
}

void mousePressed() {
  depth = (depth + 1) % 7; // Cycles from 0 to 6
}

void sierpinski(int x, int y, int len, int level) {
  if (level == 0) {
    triangle(x, y, x + len, y, x + len / 2, y - len);
  } else {
    len /= 2;
    sierpinski(x, y, len, level - 1);
    sierpinski(x + len, y, len, level - 1);
    sierpinski(x + len / 2, y - len, len, level - 1);
  }
}
