import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BODYFRIEND")),
      ),
      body: body(context),
    );
  }

  Widget body(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return portrait();
    } else {
      return landscape();
    }
  }

  Widget portrait() {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Container(
          height: 100,
        ),
      ],
    );
  }

  Widget landscape() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Container(
          height: 100,
        ),
      ],
    );
  }
}
