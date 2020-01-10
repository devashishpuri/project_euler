import 'dart:math';

void main() {
  const int limit = 10001;
  int primeNumerCount = 0;
  for (int i = 2; i<40000000; i ++) {
    if (getLargestMultiple(i) == 1) {
      primeNumerCount++;
      if (primeNumerCount >= limit) {
        print(i);
        break;
      }
    }
  }
}

int getLargestMultiple(int number) {
  int largestMultiple = 1;
  int factorLimit = (sqrt(number)).round();
  for (int i = 1; i <= factorLimit; i++) {
    if (number % i == 0) {
      largestMultiple = i;
    }
  }
  return largestMultiple;
}
