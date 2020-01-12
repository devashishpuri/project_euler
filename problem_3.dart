import 'dart:math';

void main() {
  const int numberWithFactors = 600851475143;

  int largestFactor;
  int multipleLimit = (sqrt(numberWithFactors)).ceil();

  for (int i = 1; i <= multipleLimit; i++) {
    if (numberWithFactors % i == 0) {
      int largestMultiple = getLargestMultiple(i);
      if (largestMultiple == 1) {
        largestFactor = i;
      }
    }
  }

  print(isPrimeNumber(numberWithFactors) ? numberWithFactors : largestFactor);
}

bool isPrimeNumber(int number) {
  int largestFactor = getLargestMultiple(number);
  return largestFactor == 1 || largestFactor == number;
}

int getLargestMultiple(int number) {
  int largestMultiple = 1;
  int factorLimit = (sqrt(number)).ceil();
  for (int i = 1; i <= factorLimit; i++) {
    if (number % i == 0) {
      largestMultiple = i;
    }
  }
  return largestMultiple;
}
