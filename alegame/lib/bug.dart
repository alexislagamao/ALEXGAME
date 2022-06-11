// ignore_for_file: non_constant_identifier_names

import 'dart:math';

int initNumberCard = Random().nextInt(52) + 1;
String back = "assets/BackCard.jpg";
List RightCard = ["assets/$initNumberCard.png", back, back, back, back];
bool isBack = true;
var cardValue = {
  "assets/1.png": 1,
  "assets/2.png": 1,
  "assets/3.png": 1,
  "assets/4.png": 1,
  "assets/5.png": 2,
  "assets/6.png": 2,
  "assets/7.png": 2,
  "assets/8.png": 2,
  "assets/9.png": 3,
  "assets/10.png": 3,
  "assets/11.png": 3,
  "assets/12.png": 3,
  "assets/13.png": 4,
  "assets/14.png": 4,
  "assets/15.png": 4,
  "assets/16.png": 4,
  "assets/17.png": 5,
  "assets/18.png": 5,
  "assets/19.png": 5,
  "assets/20.png": 5,
  "assets/21.png": 6,
  "assets/22.png": 6,
  "assets/23.png": 6,
  "assets/24.png": 6,
  "assets/25.png": 7,
  "assets/26.png": 7,
  "assets/27.png": 7,
  "assets/28.png": 7,
  "assets/29.png": 8,
  "assets/30.png": 8,
  "assets/31.png": 8,
  "assets/32.png": 8,
  "assets/33.png": 9,
  "assets/34.png": 9,
  "assets/35.png": 9,
  "assets/36.png": 9,
  "assets/37.png": 10,
  "assets/38.png": 10,
  "assets/39.png": 10,
  "assets/40.png": 10,
  "assets/41.png": 11,
  "assets/42.png": 11,
  "assets/43.png": 11,
  "assets/44.png": 11,
  "assets/45.png": 12,
  "assets/46.png": 12,
  "assets/47.png": 12,
  "assets/48.png": 12,
  "assets/49.png": 13,
  "assets/50.png": 13,
  "assets/51.png": 13,
  "assets/52.png": 13,
};

String ans = "";
int score = 0;
int guessNumber = Random().nextInt(52) + 1;
String guessCard = "assets/$guessNumber.png";
