import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/circle_avatar.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
    required this.avatarIndex,
    required this.name,
    required this.postIndex,
    required this.timeSpan,
  });
  final int avatarIndex;
  final String name;
  final String timeSpan;
  final int postIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Avatar(
                  index: avatarIndex,
                  radius: 26.00,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(timeSpan),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          "assets/images/post$postIndex.jpg",
          width: double.infinity,
        ),
      ],
    );
  }
}
