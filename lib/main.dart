import 'package:flutter/material.dart';

//initState is called when the StatefulWidget is inserted into the widget tree for the first time.
// It is used for initialization tasks that need to be performed only once.


//setState is used to update the state of a StatefulWidget.
//Flutter rebuilds the widget, updating any properties that have changed

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String message = '';

  @override
  void initState() {
    super.initState();
    _initializeMessage();
  }

  void _initializeMessage() {
    setState(() {
      message = "heyyy , I'm sanjhana";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InitState & SetState Eg'),
      ),
      body: Center(
        child: Text(
          message,
          style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic ),
        ),
      ),
    );
  }
}
