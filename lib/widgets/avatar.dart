import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayimage;
  final bool displaystatus;
  final bool displayborder;
  final double width;
  final double height;
  Avatar({
    required this.displayimage,
    required this.displaystatus,
    this.displayborder = false,
    this.width = 50,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: displayborder
                  ? Border.all(color: Colors.blue, width: 3)
                  : null),
          padding: EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Image.asset(
              displayimage,
              width: width,
              height: height,
            ),
          ),
        ),
        displaystatus == true
            ? Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      )),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
