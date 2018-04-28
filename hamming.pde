void setup() {
  size(512, 512);
}

void draw() {
  noStroke();
  background(0);
  int dim = height;
  for (int x = 0; x < dim; x++) {
    for (int y = 0; y < dim; y++) {
      hamming_stroke(hamming_dist(x, y));
      rect(x, y, 1, 1);
    }
  }
  saveFrame("hamming.png");
}

void hamming_stroke(int distance) {
  switch (distance) {
    case 0:
      stroke(13, 13, 15);
      break;
    case 1:
      stroke(31, 32, 37);
      break;
    case 2:
      stroke(59, 59, 84);
      break;
    case 3:
      stroke(0, 85, 205);
      break;
    case 4:
      stroke(183, 183, 175);
      break;
    case 5:
      stroke(85, 100, 45);
      break;
    case 6:
      stroke(129, 31, 90);
      break;
    case 7:
      stroke(245, 147, 12);
      break;
    case 8:
      stroke(90, 144, 180);
      break;
    case 9:
      stroke(210, 222, 238);
      break;
    case 10:
      stroke(121, 154, 223);
      break;    
  }
}

int hamming_dist(int a, int b) {
  int count = 0;
  String a_bin = binary(a, 10);
  String b_bin = binary(b, 10);
  for (int i=0; i < a_bin.length(); i++) {
    if (a_bin.charAt(i) != b_bin.charAt(i)) {
      count += 1;
    }
  }
  return count;
}
