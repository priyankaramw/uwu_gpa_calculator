import 'package:flutter/material.dart';

class SemesterHeader extends StatefulWidget {
  final int subjectsCount;
  const SemesterHeader({Key? key, required this.subjectsCount}) : super(key: key);

  @override
  _SemesterHeaderState createState() => _SemesterHeaderState();
}

class _SemesterHeaderState extends State<SemesterHeader> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      elevation: 5.0,
      color: Colors.green,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              widget.subjectsCount.toString(),
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
          ),
          Column(
            children: const [
              Text('Test'),
              Text('Test'),
              Text('Test'),
            ],
          ),
        ],
      ),
    );
  }
}
