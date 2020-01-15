void main() {
  // Brute Force Approach

  for (int i = 1; i < 500; i++) {
    for (int j = 1; j < 500; j++) {
      for (int k = 1; k < 500; k++) {
        if (i * i + j * j == k * k) {
          print('a: $i, b: $j, c: $k');

          if (i + j + k == 1000) {
            print('The Product: ${i * j * k}');
            return;
          }
        }
      }
    }
  }
}
