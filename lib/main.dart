import "package:flutter/material.dart";
import 'package:internship/screens/Home_Page.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SanFrancisco'),
      home: HomePage(),
    );
  }
}
