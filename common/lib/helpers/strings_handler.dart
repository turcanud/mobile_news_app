class StringsHandler {
  static String handleNumbers(int number) {
    if (number < 1000) {
      return number.toString();
    } else if (number < 1000000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    } else {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    }
  }

  static String handleName(String name) {
    if (name.length > 8) {
      return '${name.substring(0, 8)}...';
    }
    return name;
  }
}
