import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({this.color, this.text, required this.onpressed});

  Color? color;
  String? text = "";
  VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Material(
        elevation: 3.0,
        color: color,
        borderRadius: BorderRadius.circular(15.0),
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 200.0,
          height: 40.0,
          child: Text(
            '$text',
            style: TextStyle(
              fontSize: 25,
              color: Color(0xff9F5FFF),
            ),
          ),
        ),
      ),
    );
  }
}
