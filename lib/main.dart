import 'package:faceahmed/chat_messanger.dart';
import 'package:faceahmed/chat_screen.dart';
import 'package:faceahmed/face.dart';
import 'package:faceahmed/home.dart';
import 'package:flutter/material.dart';

main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'بسم الله الرحمن الرحيم',
      initialRoute: face.Routname, // دا الاسكرين اللى البرنامج هيبدأ من عندها
      routes: {
        // هنا بعرف كل الاسكرين اللى عندى عشان اربطهم ببعض عشان اعرف اتنقل بينهم
        face.Routname: (_) => face(),
        home.Routname : (_) => home() ,
        chat.Routname : (_) => chat() ,
        messnger.Routname : (_) => messnger(),
      }
  ))  ;


}