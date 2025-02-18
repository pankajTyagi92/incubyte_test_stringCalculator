class StringCalculator {
  int add(String number) {
    if (number.isEmpty) return 0; // return 0 for empty string

    RegExp customDelimiter = RegExp(r'[,\n]');
    if (number.startsWith("//")) {
      var parts = number.split('\n');// get split string by newline
      customDelimiter = RegExp(RegExp.escape(parts.first.substring(2)));
      number = parts.sublist(1).join('\n'); // to get combined string use join method-  [1;2;3;4]= 1;2;3;4
    }

   //to make a list of number less than 1000
    var numList = number.split(customDelimiter).map(int.parse).where((n) => n <= 1000).toList();
    //to find negative numbers
    var negatives = numList.where((n) => n < 0).toList();
    print("${negatives}");
    if (negatives.isNotEmpty) {
      throw FormatException("Negative numbers not allowed: ${negatives.join(', ')}");
    }

    var sum =numList.isEmpty ? 0 : numList.reduce((a, b) => a + b);//sum the number
    print("${sum}");
    return sum;
  }
}
