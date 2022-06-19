import 'package:flutter/material.dart';

void main() => runApp(const FlutterApp());

enum SearchType {web, image, news, shopping}

class FlutterApp extends StatefulWidget{
  const FlutterApp({Key? key}) : super(key: key);

  @override
  _FlutterAppState createState() => _FlutterAppState();
}

class _FlutterAppState extends State<FlutterApp>{
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello!'),
        ),
        body: RichText(
          text: const TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyle(color: Colors.black, fontSize: 20),
            children: <TextSpan>[
              TextSpan(
                text: 'Sign up',
                style: TextStyle(color: Colors.blueAccent, fontSize: 20)
              )
            ]
          ),
        ),
      ),
    );
  }
}