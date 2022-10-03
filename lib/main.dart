import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MagicBall(),
      ),
    );

class MagicBall extends StatefulWidget {
  const MagicBall({Key key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int answer = 1;

  void result() {
    setState(() {
      answer = Random().nextInt(5) + 1;
      print(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 62, 239),
          title: Text(
            'Ask Me Anything',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.blueGrey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: result,
                child: Image.asset('images/ball$answer.png'),
              ),
            ),
          ),
        ));
  }
}
