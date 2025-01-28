
import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_test/string_calculator.dart';

void main(){

  /*
  *
  * step 1 Create a simple String calculator with a method signature
  * */

  test("test case for empty string", (){
    expect(StringCalculator().add(""), equals(0));
  });

  test("return the sum of number ",(){
    expect(StringCalculator().add("1,2"), equals(3));
  });
}