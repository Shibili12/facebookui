import 'package:facebookui/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebookui/assets.dart';

class Roomsection extends StatelessWidget {
  const Roomsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                side: BorderSide(
                  color: const Color.fromARGB(100, 33, 149, 243),
                  width: 2,
                ),
              ),
              onPressed: () {},
              icon: Icon(
                Icons.video_call,
                color: Colors.purple,
              ),
              label: Text(
                "create \n room",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          Avatar(
            displayimage: dq,
            displaystatus: true,
          ),
          Avatar(
            displayimage: nivin,
            displaystatus: true,
          ),
          Avatar(
            displayimage: mammooty,
            displaystatus: true,
          ),
          Avatar(
            displayimage: lal,
            displaystatus: true,
          ),
          Avatar(
            displayimage: tovino,
            displaystatus: true,
          ),
          Avatar(
            displayimage: asifali,
            displaystatus: true,
          ),
        ],
      ),
    );
  }
}
