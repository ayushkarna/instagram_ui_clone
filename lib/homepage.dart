import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:instagram_ui_clone/details.dart';
import 'package:instagram_ui_clone/widgets/like_comment.dart';
import 'package:instagram_ui_clone/widgets/post.dart';
import 'package:instagram_ui_clone/widgets/story.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 50,
                      child: Image.asset("assets/images/title.png")),
                  Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.heart)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_comment_outlined)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Story(
                        index: index,
                        name: storyName[index],
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Post(
                        avatarIndex: 1,
                        name: "Ayush Karna",
                        postIndex: 1,
                        timeSpan: "30 min ago"),
                    SizedBox(
                      height: 6,
                    ),
                    LikeComment(
                      avatarIndex: 3,
                      likedBy: "Chhatra Phulara and 299",
                      firstComment: "Good morning with beautiful flowers",
                      commentNo: 20,
                      secondComment: "amy_adams Very nice",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Post(
                        avatarIndex: 2,
                        name: "Prabina Diwali",
                        postIndex: 2,
                        timeSpan: "2 hours ago"),
                    SizedBox(
                      height: 6,
                    ),
                    LikeComment(
                      avatarIndex: 4,
                      likedBy: "Nisha Chhetri and 599",
                      firstComment: "Good morning with beautiful flowers",
                      commentNo: 124,
                      secondComment: "amy_adams Very nice",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Post(
                        avatarIndex: 3,
                        name: "Chhatra Raj Phulara",
                        postIndex: 3,
                        timeSpan: "9 hours ago"),
                    SizedBox(
                      height: 6,
                    ),
                    LikeComment(
                      avatarIndex: 1,
                      likedBy: "Ayush Karna and 40",
                      firstComment: "Good morning with beautiful flowers",
                      commentNo: 98,
                      secondComment: "amy_adams Very nice",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Post(
                        avatarIndex: 4,
                        name: "Nisha Chhetri",
                        postIndex: 5,
                        timeSpan: "20 hours ago"),
                    SizedBox(
                      height: 6,
                    ),
                    LikeComment(
                      avatarIndex: 5,
                      likedBy: "Asha Timilsina and 456",
                      firstComment: "Good morning with beautiful flowers",
                      commentNo: 78,
                      secondComment: "amy_adams Very nice",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Post(
                        avatarIndex: 5,
                        name: "Asha Timilsina",
                        postIndex: 6,
                        timeSpan: "1 day ago"),
                    SizedBox(
                      height: 6,
                    ),
                    LikeComment(
                      avatarIndex: 2,
                      likedBy: "Prabina Diwali and 599",
                      firstComment: "Good morning with beautiful flowers",
                      commentNo: 542,
                      secondComment: "amy_adams Very nice",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
