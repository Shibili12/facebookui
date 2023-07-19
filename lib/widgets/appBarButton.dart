import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData icon;
  final void Function() buttonaction;
  final Color buttoncolor;
  AppBarButton({
    required this.icon,
    required this.buttonaction,
    required this.buttoncolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: buttonaction,
        icon: Icon(
          icon,
          color: buttoncolor,
          size: 25,
        ),
      ),
    );
  }
}
