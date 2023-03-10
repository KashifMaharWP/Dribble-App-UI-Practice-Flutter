import 'package:flutter/material.dart';

class EmojiWidget extends StatelessWidget {
  EmojiWidget ({Key? key, required this.Emoji}) : super(key: key);
  final String Emoji;
  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
    color: Colors.blue[400],
    borderRadius: BorderRadius.circular(12)
   ),
    child: Text(Emoji,
      style: TextStyle(fontSize: 28)
      ,),
);
  }
}

