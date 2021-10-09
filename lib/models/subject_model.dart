import 'package:flutter/foundation.dart';

class Subject {
  final int ? subCode;
  final String ?subTitle;
  final String subGrade;
  final int subCredits;

  Subject ({this.subCode, this.subTitle, required this.subGrade, required this.subCredits});
}