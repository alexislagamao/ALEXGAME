// ignore_for_file: prefer_const_constructors, file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'bug.dart';
import 'firefly.dart';

class CardGame extends StatefulWidget {
  const CardGame({Key? key}) : super(key: key);

  @override
  State<CardGame> createState() => _CardGameState();
}

class _CardGameState extends State<CardGame> {
  void gameFunction() {
    if (ans == "=<") {
      if (cardValue[guessCard]! >= cardValue[RightCard[0]]!) {
        dialogCorrect();
      } else {
        gameoverDialog();
      }
    } else if (ans == "<") {
      if (cardValue[guessCard]! < cardValue[RightCard[0]]!) {
        dialogCorrect();
      } else {
        gameoverDialog();
      }
    }
  }

  void gameReset() {
    score = 0;
    ans = "";
    initNumberCard = Random().nextInt(52) + 1;
    RightCard = ["assets/$initNumberCard.png", back, back, back, back];
  }

  void correctGuess() {
    score++;
    RightCard.insert(0, guessCard);
    guessNumber = Random().nextInt(52) + 1;
    guessCard = "assets/$guessNumber.png";
  }

  void dialogCorrect() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: Text("You're right"),
              content: Text("Continue?"),
              actions: [
                GestureDetector(
                  child: Text("Proceed"),
                  onTap: () {
                    setState(() {
                      correctGuess();
                      Navigator.of(context).pop(false);
                      isBack = true;
                    });
                  },
                )
              ],
            ));
  }

  void gameoverDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Game Over"),
              actions: [
                GestureDetector(
                  child: Text("Play Again"),
                  onTap: () {
                    setState(() {
                      gameReset();
                      Navigator.of(context).pop(false);
                      isBack = true;
                    });
                  },
                ),
                GestureDetector(
                  child: Text("Quit"),
                  onTap: () {
                    SystemNavigator.pop();
                  },
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 94, 4, 110),
      appBar: AppBar(
        title: Text('Guess The Card',
            style: TextStyle(
                fontFamily: ('ConcertOne-Regular.ttf'),
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Color.fromARGB(232, 69, 245, 0),
        elevation: 5,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/backG.jpg"),
          fit: BoxFit.fill,
        )),
        child: Column(children: <Widget>[
          Expanded(
              flex: 1,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 5.0),
                      Text(
                        'SCORE: ',
                        style: TextStyle(
                          color: Colors.amberAccent[200],
                          letterSpacing: 2.0,
                          fontFamily: ('Alex'),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$score',
                        style: TextStyle(
                          color: Colors.amberAccent[200],
                          letterSpacing: 2.0,
                          fontFamily: ('KdamThmorPro-regular.ttf'),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ))),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                isBack ? cardContainer(back) : cardContainer(guessCard),
                SizedBox(width: 30),
                cardContainer(RightCard[0]),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                cardContainer(RightCard[1]),
                cardContainer(RightCard[2]),
                cardContainer(RightCard[3]),
                cardContainer(RightCard[4]),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        ans = "=>";
                        isBack = false;
                        gameFunction();
                      });
                    },
                    child: Buttons('=>')),
                SizedBox(
                  width: 25,
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        ans = "<";
                        isBack = false;
                        gameFunction();
                      });
                    },
                    child: Buttons('<')),
              ]))
        ]),
      ),
    );
  }
}
