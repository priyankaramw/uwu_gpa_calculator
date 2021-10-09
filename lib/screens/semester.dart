import 'package:flutter/material.dart';
import 'package:uwu_gpa_calculator/models/subject_model.dart';
import 'package:uwu_gpa_calculator/widgets/bottom_menu_bar_item.dart';
import 'package:uwu_gpa_calculator/widgets/semester_header.dart';
import 'package:uwu_gpa_calculator/widgets/subject_list.dart';

class Semester extends StatefulWidget {
  const Semester({Key? key}) : super(key: key);

  @override
  _SemesterState createState() => _SemesterState();
}

class _SemesterState extends State<Semester> {

  final List<Subject> semSubList = [
    Subject(subCode: 1, subTitle: 'Test Subject 1', subGrade: 'A+', subCredits: 3),
    Subject(subCode: 2, subTitle: 'Test Subject 2', subGrade: 'A+', subCredits: 3),
    Subject(subCode: 3, subTitle: 'Test Subject 3', subGrade: 'A+', subCredits: 3),
    Subject(subCode: 4, subTitle: 'Test Subject 4', subGrade: 'A+', subCredits: 3),
    Subject(subCode: 5, subTitle: 'Test Subject 5', subGrade: 'A+', subCredits: 3),
  ];

  void _addNewSubject() { //add parameters here later.
    final _newSub = Subject(
    subCode: 1,
    subTitle: 'Test Subject 6',
    subGrade: 'B',
    subCredits: 2
    );

    setState(() {
      semSubList.add(_newSub);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Semester X'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            padding: const EdgeInsets.only(right: 16.0),
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SemesterHeader(subjectsCount: semSubList.length),
          Expanded(
            child: SubjectList(list: semSubList),
          ),
          SemesterHeader(subjectsCount: semSubList.length),
        ],
      ),

      floatingActionButton:FloatingActionButton( //Floating action button on Scaffold
        onPressed: (){
          _addNewSubject();
        },
        child: const Icon(Icons.add), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center

      bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
        color:Colors.purple,
        shape: const CircularNotchedRectangle(), //shape of notch
        notchMargin: 5, //notch margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BottomMenuBarItem(cText: 'Settings'),
            BottomMenuBarItem(cText: 'Home'),
            const SizedBox(width: 40.0),
            BottomMenuBarItem(cText: 'Semester'),
            BottomMenuBarItem(cText: 'Info'),
          ],
        ),
      ),
    );
  }
}
