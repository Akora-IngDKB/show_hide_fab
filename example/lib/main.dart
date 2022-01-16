import 'package:flutter/material.dart';
import 'package:show_hide_fab/show_hide_fab.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShowHideFAB Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'ShowHideFAB Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              show = !show;
            });
          },
          style: ElevatedButton.styleFrom(primary: Colors.green),
          child: Text(
            show ? 'HIDE FAB' : 'SHOW FAB',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      floatingActionButton: ShowHideFAB(
        shouldShow: show,
        animationDuration: const Duration(milliseconds: 250),
        fab: FloatingActionButton(
          backgroundColor: Colors.green,
          child: const Icon(Icons.add, color: Colors.white),
          onPressed: () {},
        ),
      ),
    );
  }
}
