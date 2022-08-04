import 'package:flutter/material.dart';

class Quizbrain {
  int? ans;
  bool fromc = true;
  Quizbrain({this.ans, this.fromc = false});

  Widget removeslice(ans, bool fromc) {
    if (ans == 6) {
      return Container();
    }
    ans = ans % 6;

    if (fromc) {
      if (ans == 0) {
        return SizedBox(
            height: 220,
            width: 220,
            child: Image.asset('images/removed$ans.png'));
      } else {
        return SizedBox(
            height: 220,
            width: 220,
            child: Image.asset('images/normal$ans.png'));
      }
    } else {
      return SizedBox(
          height: 220,
          width: 220,
          child: Image.asset('images/removed$ans.png'));
    }
  }
}
