
import 'package:flutter/material.dart';

class Person extends StatelessWidget{
  final String firstName;
  final String lastName;

  Person({required this.firstName, required this.lastName});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello!'),
        ),
        body: Center(
          child: Text('$firstName $lastName'),
        ),
      ),
    );
  }
}