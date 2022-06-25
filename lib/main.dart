import 'package:flutter/material.dart';

void main() => runApp(const FlutterApp());

enum Menu { itemOne, itemTwo, itemThree, itemFour }

class FlutterApp extends StatefulWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  _FlutterAppState createState() => _FlutterAppState();
}

class _FlutterAppState extends State<FlutterApp> {
  String _selectedMenu = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello!'),
          actions: <Widget>[
            PopupMenuButton<Menu>(
              onSelected: (Menu item) {
                setState(() {
                  _selectedMenu = item.name;
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                const PopupMenuItem(
                  child: Text('Item 1'),
                  value: Menu.itemOne,
                ),
                const PopupMenuItem(
                  child: Text('Text 2'),
                  value: Menu.itemTwo,
                ),
                const PopupMenuItem(
                  child: Text('Text 3'),
                  value: Menu.itemThree,
                ),
                const PopupMenuItem(
                  child: Text('Text 4'),
                  value: Menu.itemFour,
                ),
              ],
            ),
          ],
        ),
        body: Center(
          child: Text('_selectedMenu: $_selectedMenu'),
        ),
      ),
    );
  }
}
