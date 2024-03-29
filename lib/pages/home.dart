import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedDefaultTextStyle(
                curve: Curves.bounceInOut,
                style: isSelected
                    ? TextStyle(
                        fontSize: 50,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)
                    : TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w100),
                duration: const Duration(milliseconds: 200),
                child: Text("Animate me!"),
              ),
              FlatButton(
                child: Text("Click me!"),
                onPressed: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
