import 'package:facebookui/assets.dart';
import 'package:facebookui/widgets/appBarButton.dart';
import 'package:facebookui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class Storycard extends StatelessWidget {
  final String labeltext;
  final String story;
  final String avatar;
  final bool Createstorystatus;
  Storycard({
    required this.labeltext,
    required this.story,
    required this.avatar,
    this.Createstorystatus = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child: Createstorystatus
                  ? AppBarButton(
                      icon: Icons.add,
                      buttonaction: () {},
                      buttoncolor: Colors.blue,
                    )
                  : Avatar(
                      displayimage: avatar,
                      displaystatus: false,
                      displayborder: true,
                      height: 35,
                      width: 35,
                    )),
          Positioned(
              bottom: 10,
              left: 5,
              child: Text(
                labeltext != null ? labeltext : " ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
    );
  }
}
