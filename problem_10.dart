import 'dart:math';

void main() {
  const int limit = 2000000;
  int sum = 0;
  for (int i = 2; i <= limit; i++) {
    if (getLargestMultiple(i) == 1) {
      sum += i;
    }
  }
  print(sum);
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
