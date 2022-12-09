import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String? value = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test')),
      body: Center(
        child: Column(children: [
          Text('data'),
          TextField(),
          ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setString('TestString', '');
              },
              child: Text("Save Data")),
          ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                value = prefs.getString('TestString');
                print('value $value');
              },
              child: Text("Load Data")),
          ElevatedButton(onPressed: () {}, child: Text("Clear Data"))
        ]),
      ),
    );
  }
}
