
import 'package:democi/Screen/HomePage.dart';
import 'package:flutter_test/flutter_test.dart';
main(){
  test('Reversed my fucking String', (){
    //initial value
    String initial = 'Windows';
    String reversed = reverseString(initial);
    expect(reversed, 'swodniW');
  });

}