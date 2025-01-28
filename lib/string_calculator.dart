
class StringCalculator{

  int add (String number){
    if(number.isEmpty) return 0;// return 0 for empty string
    var sum = number.split(RegExp(r'[,\n]')).map(int.parse).reduce((a,b)=>a+b);// add regular expression to split the string
    print("${sum}"); // to print sum on console.
    return sum;
  }

}