import 'package:democi/flavour/flavor_banner.dart';
import 'package:democi/flavour/flavor_config.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller;
  String _reversed = '';

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
          child: Scaffold(
        appBar: AppBar(
          title: Text('CD/CI Demo'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter string to reverse"),
              ),
              const SizedBox(height: 15.0),
             // if (_reversed != null) ...[

                Center(
                  child: Text(
                    _reversed,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
             // ],
              Center(
                child: RaisedButton(
                  child: Text("Reverse"),
                  onPressed: () {
                    if (_controller.text.isEmpty) return;
                    setState(() {
                      _reversed = reverseString(_controller.text);
                    });
                  },
                ),
              ),

//Checking the APp Mode.
SizedBox(height: 200,),
              Center(child: Text("App mode: ${FlavorConfig.instance.name}", style: TextStyle(fontSize: 18),)),
            ],
          ),
        ),
      ),
    );
  }
}

String reverseString(String initial) {
  return initial.split('').reversed.join();
}