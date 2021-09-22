import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:SimpleApp()
    );

  }
}
class SimpleApp extends StatefulWidget {
  @override
  _SimpleAppState createState() => _SimpleAppState();
}

class _SimpleAppState extends State<SimpleApp> {
  int cnt =0;
  void cnton(){
    setState(() {
      cnt++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('state_change'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: cnton,
      ),
      body: Container(
        child:Column(
          children: <Widget>[
            Icon(Icons.android),
            Text('$cnt')
          ],
        ),
      ),
    );
  }
}
