import 'package:flutter/foundation.dart';

class Intake {
  String id;
  String title;
  int cal_amount;
  DateTime date;

  Intake(
      {@required this.id,
      @required this.title,
      @required this.cal_amount,
      @required this.date});
}
