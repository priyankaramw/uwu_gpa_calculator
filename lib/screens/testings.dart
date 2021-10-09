import 'package:flutter/material.dart';
import 'package:uwu_gpa_calculator/models/subject_model.dart';
import 'package:uwu_gpa_calculator/widgets/subject_list.dart';
import 'package:uwu_gpa_calculator/widgets/bottom_menu_bar_item.dart';

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton( //Floating action button on Scaffold
        onPressed: (){
          //code to execute on button press
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
