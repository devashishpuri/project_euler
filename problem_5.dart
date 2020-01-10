void main() {
  const int limit = 20;
  const int INT_MAX = 9223372036854775807;

  for (int i = limit + 1; i < INT_MAX; i++) {
    bool divisibleByAll;
    for (int j = 1; j<= limit; j++) {
      divisibleByAll = true;
      if (divisibleByAll && (i % j == 0)) {
        divisibleByAll = true;
      } else {
        divisibleByAll = false;
        break;
      }
    }
    if (divisibleByAll) {
      print(i);
      break;
    }
  }

}
