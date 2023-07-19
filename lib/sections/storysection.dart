import 'package:facebookui/assets.dart';
import 'package:facebookui/widgets/storycard.dart';
import 'package:flutter/material.dart';

class Storysection extends StatelessWidget {
  const Storysection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Storycard(
            labeltext: "Add to story",
            story: dq,
            avatar: dq,
            Createstorystatus: true,
          ),
          Storycard(
            labeltext: "Tovino thomas",
            story: tovinopost,
            avatar: tovino,
          ),
          Storycard(
            labeltext: "Mammooty",
            story: mammookapost,
            avatar: mammooty,
          ),
          Storycard(
            labeltext: "Mohanlal",
            story: lalpost,
            avatar: lal,
          )
        ],
      ),
    );
  }
}
