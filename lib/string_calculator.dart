
class StringCalculator{

  int add (String number){
    if(number.isEmpty) return 0;// return 0 for empty string
    var sum = number.split(',').map(int.parse).reduce((a,b)=>a+b);
    print("${sum}"); // to print sum on console.
    return sum;
  }

}