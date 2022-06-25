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
        ),
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.red,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album, size: 60,),
                  title: Text('Sonu Nigam', style: TextStyle(fontSize: 30.0),),
                  subtitle: Text('Best of Sonu', style: TextStyle(fontSize: 18.0),),
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: const Text('Play'),
                      onPressed: (){},
                    ),
                    RaisedButton(
                      child: const Text('Pause'),
                      onPressed: (){},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
