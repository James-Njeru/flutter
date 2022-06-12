
import 'package:flutter/material.dart';

void main(){
  runApp(MyWidgets());
}

class MyWidgets extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
        ),
        body: Container(
          child: Text('Hi Flutter'),
        ),
      ),
    );
  }

}