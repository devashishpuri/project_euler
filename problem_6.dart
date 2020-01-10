void main() {
  const int limit = 100;
  print(getSumSquare(limit) - getSquareSum(limit));
}

int getSumSquare(int limit) {
  int sum = 0;
  for (int i = 1; i <= limit; i++) {
    sum += i;
  }
  return sum * sum;
}

int getSquareSum(int limit) {
  int sum = 0;
  for (int i = 1; i <= limit; i++) {
    sum += (i * i);
  }
  return sum;
}
