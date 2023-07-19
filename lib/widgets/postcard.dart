import 'package:facebookui/assets.dart';
import 'package:facebookui/sections/headerButtonsection.dart';
import 'package:facebookui/widgets/avatar.dart';
import 'package:facebookui/widgets/bluetick.dart';
import 'package:facebookui/widgets/headerbutton.dart';
import 'package:flutter/material.dart';

class Postcard extends StatelessWidget {
  final String avatar;
  final String name;
  final String time;
  final String postcaption;
  final String postimage;
  final bool showbluetick;
  final String likecount;
  final String commentcount;
  final String sharecount;
  Postcard({
    required this.avatar,
    required this.name,
    required this.time,
    required this.postcaption,
    required this.postimage,
    this.showbluetick = false,
    required this.likecount,
    required this.commentcount,
    required this.sharecount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postcardheader(),
          titlesection(),
          imagesection(),
          footersection(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButtonSection(
            buttonone: headerbutton(
              buttontext: "like",
              buttonicon: Icons.thumb_up,
              buttonaction: () {},
              buttoncolor: Colors.grey,
            ),
            buttontwo: headerbutton(
              buttontext: "comment",
              buttonicon: Icons.comment,
              buttonaction: () {},
              buttoncolor: Colors.grey,
            ),
            buttonthree: headerbutton(
              buttontext: "share",
              buttonicon: Icons.share_outlined,
              buttonaction: () {},
              buttoncolor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget footersection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 10,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              displaytext(label: likecount),
            ],
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            child: Row(
              children: [
                displaytext(label: commentcount),
                SizedBox(
                  width: 3,
                ),
                displaytext(label: "comments"),
                SizedBox(
                  width: 10,
                ),
                displaytext(label: sharecount),
                SizedBox(
                  width: 3,
                ),
                displaytext(label: "shares"),
                SizedBox(
                  width: 10,
                ),
                Avatar(
                  displayimage: avatar,
                  displaystatus: false,
                  height: 20,
                  width: 20,
                ),
                // SizedBox(
                //   width: 10,
                // ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displaytext({
    required String label,
  }) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget imagesection() {
    return Container(
      padding: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Image.asset(postimage),
    );
  }

  Widget titlesection() {
    return postcaption != null || postcaption != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              postcaption == null ? "" : postcaption,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : SizedBox();
  }

  Widget postcardheader() {
    return ListTile(
        leading: Avatar(displayimage: avatar, displaystatus: false),
        title: Row(
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            showbluetick ? Bluetick() : SizedBox(),
          ],
        ),
        subtitle: Row(
          children: [
            Text(time == null ? " " : time),
            SizedBox(
              width: 6,
            ),
            Icon(
              Icons.public,
              size: 15,
              color: Colors.grey[700],
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
          ),
        ));
  }
}
