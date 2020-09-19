import 'package:flutter/material.dart';
import 'griditem.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static counter _counter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counter = new counter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GridView.builder(
              itemCount: 50,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemBuilder: (context, index) {
                return GridItem(_counter);
              })),
    );
  }
}

class counter {
  int count;
  counter() {
    count = 0;
  }
}
