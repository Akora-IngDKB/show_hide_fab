import 'package:flutter/material.dart';
import 'package:show_hide_fab/show_hide_fab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShowHideFAB Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'ShowHideFAB Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            setState(() {
              show = !show;
            });
          },
          color: Colors.green,
          child: Text(
            show ? 'HIDE FAB' : 'SHOW FAB',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      floatingActionButton: ShowHideFAB(
        shouldShow: show,
        animationDuration: Duration(milliseconds: 250),
        fab: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.add, color: Colors.white),
          onPressed: () {},
        ),
      ),
    );
  }
}
