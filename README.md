# show_hide_fab 
[![Pub](https://img.shields.io/pub/v/show_hide_fab.svg)](https://pub.dev/packages/show_hide_fab)
[![Github Language](https://img.shields.io/github/languages/top/Akora-IngDKB/show_hide_fab)]
[![License](https://img.shields.io/badge/license-MIT-purple.svg)](LICENSE)

A flutter package that provides easy methods to show and hide a FAB attached to a Scaffold.
<p align="center">  
<img src="https://raw.githubusercontent.com/Akora-IngDKB/show_hide_fab/master/example/demo.gif" height=500em><br />  
</p>

## Basic Usage
Simply add the ```ShowHideFAB``` to your Scaffold as the floatingActionButton parameter.
```dart
ShowHideFAB(
  shouldShow: showFab,
  animationDuration: Duration(milliseconds: 500),
  fab: FloatingActionButton(
    backgroundColor: Colors.green,
    child: Icon(Icons.add, color: Colors.white),
    onPressed: () {},
  ),
),
```

## Example
This code demonstrates showing and hiding the fab using a button.
```dart
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
```

## License
This project has been licensed under the MIT License. Check the [LICENSE](LICENSE) file for the details.