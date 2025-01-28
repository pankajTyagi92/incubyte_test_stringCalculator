
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

  //test case to test for more than 2 number
  test("return the sum of number more than 2 ",(){
    expect(StringCalculator().add("1,2,3,4"), equals(10));
  });

  //to handle new line-
  test("test case to handle new line and return sum ",(){
    expect(StringCalculator().add("1\n2,3"), equals(6));
  });

  //to support custom delimiter
  test(' custom delimiter', () {
    expect(StringCalculator().add("//;\n1;2"), equals(3));
  });

  // to show exception on -ve number
  test('Negative numbers throw an exception', () {
    expect(() => StringCalculator().add("1,-2,3"), throwsA(isA<FormatException>()));
  });
  test('Numbers bigger than 1000 are ignored', () {
    expect(StringCalculator().add("2,1001"), equals(2));
  });
}