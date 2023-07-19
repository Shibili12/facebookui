import 'package:facebookui/assets.dart';
import 'package:facebookui/sections/Statussection.dart';
import 'package:facebookui/sections/headerButtonsection.dart';
import 'package:facebookui/sections/roomsection.dart';
import 'package:facebookui/sections/storysection.dart';
import 'package:facebookui/widgets/headerbutton.dart';
import 'package:facebookui/widgets/postcard.dart';
import 'package:flutter/material.dart';
import './widgets/appBarButton.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            AppBarButton(
              icon: Icons.search,
              buttonaction: () {},
              buttoncolor: Colors.black,
            ),
            AppBarButton(
              icon: Icons.message,
              buttonaction: () {},
              buttoncolor: Colors.black,
            )
          ],
        ),
        body: ListView(
          children: [
            Statussection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            HeaderButtonSection(
              buttonone: headerbutton(
                  buttonaction: () {},
                  buttoncolor: Colors.red,
                  buttonicon: Icons.video_call,
                  buttontext: "live"),
              buttontwo: headerbutton(
                  buttonaction: () {},
                  buttoncolor: Colors.green,
                  buttonicon: Icons.photo_camera,
                  buttontext: "photo"),
              buttonthree: headerbutton(
                  buttonaction: () {},
                  buttoncolor: Colors.purple,
                  buttonicon: Icons.video_call,
                  buttontext: "room"),
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            Roomsection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            Storysection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            Postcard(
              avatar: asifali,
              name: "Asifali",
              time: "5hrs ago",
              postcaption: "wait is over......!",
              postimage: asifalipost,
              showbluetick: true,
              likecount: "23K",
              commentcount: "2.3K",
              sharecount: "1.2K",
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            Postcard(
              avatar: nivin,
              name: "Nivinpauly",
              time: "7hrs ago",
              postcaption: "new film",
              postimage: nivinpost,
              showbluetick: true,
              likecount: "56k",
              commentcount: "5.3K",
              sharecount: "5.2K",
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            Postcard(
              avatar: tovino,
              name: "Tovino Thomas",
              time: "7hrs ago",
              postcaption: tovinotitle,
              postimage: tovinopost,
              showbluetick: true,
              likecount: "100k",
              commentcount: "15.3K",
              sharecount: "8.2K",
            ),
          ],
        ),
      ),
    );
  }
}
