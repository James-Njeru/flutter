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
        body: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter name',
                  icon: Icon(Icons.person),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'enter name';
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Phone',
                  hintText: 'Enter phone number',
                  icon: Icon(Icons.phone),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'enter phone number';
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'DOB',
                  hintText: 'Date of birth',
                  icon: Icon(Icons.calendar_today),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'enter DOB';
                  }
                },
              ),
              Container(
                alignment: Alignment.center,
                child: RaisedButton(
                  child: Text('Submit'),
                  onPressed: (){
                    if(_key.currentState!.validate()){
                      Scaffold.of(context)
                          .showSnackBar(SnackBar(content: Text('Data is processing')));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}