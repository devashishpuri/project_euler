void main() {
  const int number = 999;
  int largestNumber = 0;

  for (int i = number; i >= 99; i--) {
    for (int j = number; j >= 99; j--) {
      int product = i * j;
      if (isNumberPallindrome(product) && product > largestNumber) {
        largestNumber = product;
      }
    }
  }

  print(largestNumber);
}

bool isNumberPallindrome(int number) {
  String n = number.toString();
  List<String> strArr = [
    n.substring(0, (n.length / 2).ceil()),
    n.substring((n.length / 2).ceil())
  ];
  if (strArr[0].length == strArr[1].length) {
    if (strArr[0].split('').reversed.join() == strArr[1]) {
      return true;
    } else {
      return false;
    }
  } else {
    String strPart1 = strArr[0].substring(0, strArr[0].length - 1).split('').reversed.join();
    if (strPart1 == strArr[1]) {
      return true;
    } else {
      return false;
    }
  }

}
