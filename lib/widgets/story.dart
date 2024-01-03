import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({
    super.key,
    required this.index,
    required this.name,
  });
  final int index;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
          ),
          child: Container(
            width: 90,
            height: 90,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/images/story.png"),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                maxRadius: 45,
                foregroundImage: AssetImage("assets/images/p${index + 1}.jpg"),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
