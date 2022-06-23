import 'package:flutter/material.dart';

void main() => runApp(const FlutterApp());

enum SearchType {web, image, news, shopping}

class FlutterApp extends StatefulWidget{
  const FlutterApp({Key? key}) : super(key: key);

  @override
  _FlutterAppState createState() => _FlutterAppState();
}

class _FlutterAppState extends State<FlutterApp>{
  String dropdownvalue = 'item 1';

  var items = [
    'item 1', 'item 2', 'item 3', 'item 4', 'item 5',
  ];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello!'),
        ),
        body: Center(
          child: DropdownButton(
            value: dropdownvalue,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: items.map((String items){
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue){
              setState((){
                dropdownvalue = newValue!;
              });
            },
          ),
        ),
      ),
    );
  }
}