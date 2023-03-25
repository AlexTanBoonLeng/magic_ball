import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MagicBall()

  );
}
class MagicBall extends StatelessWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.blue,
        ),
        body: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber  = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children:[
      Expanded(
      child: Padding(padding: const EdgeInsets.all(15.0),
      child:TextButton(
        onPressed: (){
          setState(() {
            randomize();
          });
          print(ballNumber);

        },
        child:Image.asset(
          'images/ball$ballNumber.png',
               ),
            ),
        ),
     ),
      ],
    ),
    );
  }
  void randomize(){
    ballNumber = Random().nextInt(5)+1;
  }
}



