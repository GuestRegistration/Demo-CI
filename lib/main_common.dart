  import 'package:democi/app.dart';
import 'package:democi/config_reader.dart';
import 'package:democi/flavour/flavor_config.dart';
import 'package:flutter/material.dart';

Future<void> mainCommon(Flavor env) async {
  // Always call this if the main method is asynchronous
  WidgetsFlutterBinding.ensureInitialized();
  // Load the JSON config into memory 
  await ConfigReader.initialize();
  Color primaryColor;

  switch (env) {
    //DEVELOPMENT MODE
    case Flavor.DEV:
      primaryColor = Colors.blue;
       FlavorConfig(flavor: Flavor.DEV,
      color: Colors.green,
      values: FlavorValues(baseUrl: "")
  );
      break;

      //QA
    case Flavor.QA:
      primaryColor = Colors.yellow;
       FlavorConfig(flavor: Flavor.QA,
      color: Colors.deepPurpleAccent,
      values: FlavorValues(
          baseUrl: "https://raw.githubusercontent.com/JHBitencourt/ready_to_go/master/lib/json/person_qa.json"
      )
  );
        break;

//PRODUCTION MODE
        case Flavor.PRODUCTION:
      primaryColor = Colors.green;
      FlavorConfig(flavor: Flavor.PRODUCTION,
      values: FlavorValues(
        baseUrl: "https://raw.githubusercontent.com/JHBitencourt/ready_to_go/master/lib/json/person_production.json"
      )
  );
      break;
  }
  runApp(MyApp());
}