import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/circle_avatar.dart';

class LikeComment extends StatelessWidget {
  const LikeComment({
    super.key,
    required this.avatarIndex,
    required this.likedBy,
    required this.firstComment,
    required this.commentNo,
    required this.secondComment,
  });
  final int avatarIndex;
  final String likedBy;
  final String firstComment;
  final int commentNo;
  final String secondComment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Avatar(index: avatarIndex, radius: 14),
            const SizedBox(
              width: 15,
            ),
            RichText(
              text: TextSpan(children: [
                const TextSpan(
                  text: "liked by ",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextSpan(
                    text: likedBy,
                    style: const TextStyle(
                      color: Colors.black,
                    )),
                const TextSpan(
                    text: " others",
                    style: TextStyle(
                      color: Colors.grey,
                    )),
              ]),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          firstComment,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "View all $commentNo comments",
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          secondComment,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
