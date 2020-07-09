import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){

group("Flutter CD/CI app Test", (){
   FlutterDriver driver;

//Setup connection in flutter.
   setUpAll(()async{
driver = await FlutterDriver.connect();
   });

   tearDownAll((){
     if(driver != null){
        driver.close();
     }
   });

   var textfield = find.byType("TextField");
   var button = find.text('Reverse');
   var reverse = find.text('olleH');

   test("Reverse the String", ()async{
     await driver.tap(textfield);
     await Future.delayed(Duration(seconds: 2));
     await driver.enterText("Hello");
     await Future.delayed(Duration(seconds: 2));
     await driver.tap(button);
     await Future.delayed(Duration(seconds: 2));
     await driver.waitFor(reverse);
     await driver.waitUntilNoTransientCallbacks();
     assert(reverse != null);
   });

});

}
