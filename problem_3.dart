import 'dart:math';

void main() {
  const int numberWithFactors = 600851475143;

  int largestFactor;
  int multipleLimit = (sqrt(numberWithFactors)).round();

  for (int i = 1; i <= multipleLimit; i++) {
    if (numberWithFactors % i == 0) {
      int largestMultiple = getLargestMultiple(i);
      if (largestMultiple == 1) {
        largestFactor = i;
      }
    }
  }

  print(largestFactor);
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
