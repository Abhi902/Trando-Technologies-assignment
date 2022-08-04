import 'package:flutter/material.dart';
import 'package:quiz_assignment/components/RoundButton.dart';
import 'quiz brain.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

Quizbrain object = Quizbrain();
int removed = 0;
bool c = false;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD2D2D2),
      body: Column(
        children: <Widget>[
          Container(
            color: Color(0xffD2D2D2),
            height: 150,
            width: 450,
            child: Padding(
              padding: const EdgeInsets.only(top: 45, left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      'Eat all the Slices of pizza by answering ',
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff50206C),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        height: 55,
                        width: 55,
                        child: Image.asset('images/pizza.png')),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffD2D2D2),
              child: Text(
                'Question 1 ',
                maxLines: 2,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff50206C),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffD2D2D2),
              child: Text(
                'What comes after "B ? ',
                maxLines: 2,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color(0xffFFAC71),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RoundButton(
            text: '"C"',
            color: Colors.white,
            onpressed: () {
              setState(() {
                c = true;
              });
            },
          ),
          RoundButton(
            text: '"A"',
            color: Colors.white,
            onpressed: () {
              setState(() {
                removed += 1;
                c = false;
              });
            },
          ),
          RoundButton(
            text: '"D"',
            color: Colors.white,
            onpressed: () {
              setState(() {
                removed += 1;
                c = false;
              });
            },
          ),
          RoundButton(
            text: '"E"',
            color: Colors.white,
            onpressed: () {
              setState(() {
                removed += 1;
                c = false;
              });
            },
          ),
          object.removeslice(removed, c),
        ],
      ),
    );
  }
}
