import 'package:facebookui/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebookui/assets.dart';

class Statussection extends StatelessWidget {
  const Statussection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayimage: dq,
        displaystatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
