import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GPA Home'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            padding: const EdgeInsets.only(right: 16.0),
          ),
        ],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(  // Use ink here.
              padding: const EdgeInsets.all(50.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color: Colors.red,
              ),
              margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
              child: const Text(''),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(50.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.red,
                    ),
                    margin: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                    child: const Text(''),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(50.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.red,
                    ),
                    margin: const EdgeInsets.fromLTRB(8.0, 8.0, 16.0, 8.0),
                    child: const Text(''),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(50.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.red,
                    ),
                    margin: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                    child: const Text(''),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(50.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.red,
                    ),
                    margin: const EdgeInsets.fromLTRB(8.0, 8.0, 16.0, 8.0),
                    child: const Text(''),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(50.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.red,
                    ),
                    margin: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                    child: const Text(''),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(30.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.red,
                    ),
                    margin: const EdgeInsets.fromLTRB(8.0, 8.0, 16.0, 8.0),
                    child: TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/semester');
                        },
                        child: const Text('Semester')),
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}


// FlatButton.icon(
//             onPressed: () {
//               Navigator.pushNamed(context, 'null');
//             },
//             icon: const Icon(Icons.edit_location),
//             label: const Text('null')),