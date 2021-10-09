import 'package:flutter/material.dart';

class TestingTwo extends StatefulWidget {
  const TestingTwo({Key? key}) : super(key: key);

  @override
  _TestingTwoState createState() => _TestingTwoState();
}

class _TestingTwoState extends State<TestingTwo> {

  int _volume = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('InkWell Button Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                splashColor: Colors.green,
                highlightColor: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: const <Widget>[
                    Icon(
                        Icons.ring_volume,
                        size: 50,
                      ),
                    Text('Text'),
                  ]),
                ),
                onTap: () {
                  setState(() {
                    _volume += 2;
                  });
                },
              ),
              Text (
                  _volume.toString(),
                  style: TextStyle(fontSize: 50)
              ),
            ],
          ),
        ),
      ),
    );
  }
}