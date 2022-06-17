import 'package:flutter/material.dart';

import './person.dart';

void main() => runApp(const FlutterApp());

class FlutterApp extends StatelessWidget{
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Person(firstName: 'Jude', lastName: 'Wake');
  }
}