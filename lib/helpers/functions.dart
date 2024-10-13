String formatNumber(int number) {
  String numberString = number.toString();

  StringBuffer formattedString = StringBuffer();

  int length = numberString.length;
  int firstPartLength = length % 3 == 0 ? 3 : length % 3;

  formattedString.write(numberString.substring(0, firstPartLength));

  for (int i = firstPartLength; i < length; i += 3) {
    formattedString.write(' ');
    formattedString.write(numberString.substring(i, i + 3));
  }

  return formattedString.toString();
}
