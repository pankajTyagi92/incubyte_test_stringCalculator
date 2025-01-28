
class StringCalculator{

  int add (String number){
    if(number.isEmpty) return 0;// return 0 for empty string

    return int.parse(number);// TO return the number
  }

}