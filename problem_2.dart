void main() {
  const int limit = 4000000;
  // const int limit = 10;
  int baseFibonacciSequence = 1;
  int currentFibonacciSequence = 1;
  int sum = 0;

  while (currentFibonacciSequence <= limit) {
    /**
     * 1 is ommited from observation
     * as we are concerened with Even
     * numbers.
     */
    currentFibonacciSequence = baseFibonacciSequence + currentFibonacciSequence;
    baseFibonacciSequence = currentFibonacciSequence - baseFibonacciSequence;

    // print(currentFibonacciSequence);
    if (currentFibonacciSequence % 2 == 0) {
      sum += currentFibonacciSequence;
    }
  }

  print(sum);
}
