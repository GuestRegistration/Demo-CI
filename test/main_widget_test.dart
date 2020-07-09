import 'package:democi/app.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main(){
   testWidgets('Reverse String Widget', (WidgetTester tester)
   async{
    await tester.pumpWidget(MyApp());
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);

    await tester.enterText(textField, 'Hello');
    expect(find.text('Hello'), findsOneWidget);

    
    var button = find.text('Reverse');
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text("olleH"), findsOneWidget);
    
  });
}