import 'package:flutter/material.dart';
import 'package:uwu_gpa_calculator/models/subject_model.dart';

class SubjectList extends StatefulWidget {
  List <Subject> list;
  SubjectList({Key? key, required this.list}) : super(key: key);
  /// how to pass the constructor -> https://stackoverflow.com/questions/50818770/passing-data-to-a-stateful-widget/50818870#50818870

  @override
  _SubjectListState createState() => _SubjectListState();
}

class _SubjectListState extends State<SubjectList> {

  var subjectInController = TextEditingController();
  var gradeInController = TextEditingController();
  var creditsInController = TextEditingController();

  @override
  void initState() {
    subjectInController.text = widget.list[0].subTitle!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
          elevation: 5.0,
          child: Row(children: <Widget>[
            Expanded(   /** No. **/
              flex: 1,
              child: Container(
                //color: Colors.red,
                margin: const EdgeInsets.only(bottom: 10.0),
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  (index+1).toString()+'.',
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.black
                  ),
                ),
              ),
            ),
            Expanded(   /** Subject **/
              flex: 5,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                /// https://stackoverflow.com/questions/52234378/flutter-textfield-in-listview-builder
                child: TextField(
                  autocorrect: true,
                  decoration: const InputDecoration(labelText: 'Subject'),
                  controller: subjectInController,
                  //onChanged: (val) {
                  //titleInput = val;
                  //},
                ),
              ),
            ),
            Expanded( /** Grade **/
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                child: TextField(
                  autocorrect: true,
                  decoration: const InputDecoration(labelText: 'Grade'),
                  controller: gradeInController,
                ),
              ),
            ),
            Expanded( /** Credits **/
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                padding: const EdgeInsets.fromLTRB(5.0, 0.0, 10.0, 0.0),
                child: TextField(
                  autocorrect: true,
                  decoration: const InputDecoration(labelText: 'Credits'),
                  controller: creditsInController,
                ),
              ),
            ),
          ]),
        );
      },
    );
  }
}
