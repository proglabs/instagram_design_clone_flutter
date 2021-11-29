import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home_screen.dart';
import 'package:instagram_clone/screens/likes_screen.dart';
import 'package:instagram_clone/screens/profile_screen.dart';
import 'package:instagram_clone/screens/search_screen.dart';
import 'package:instagram_clone/utils/text_utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  final TextUtils _textUtils = TextUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: showAppBar(),
      body: getScreen(),
      bottomNavigationBar: bottomBarWidget(),
    );
  }

  Widget bottomBarWidget() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              index = 0;
              setState(() {});
            },
            child: Image.asset(index == 0 ? "assets/icons/home_filled.png" : "assets/icons/home.png", color: Colors.white, width: 25, height: 25),
          ),
          InkWell(
              onTap: () {
                index = 1;
                setState(() {});
              },
              child:
                  Image.asset(index == 1 ? "assets/icons/search_filled.png" : "assets/icons/search.png", color: Colors.white, width: 25, height: 25)),
          Image.asset("assets/icons/add_post.png", color: Colors.white, width: 25, height: 25),
          InkWell(
            onTap: () {
              index = 3;
              setState(() {});
            },
            child: Image.asset(index == 3 ? "assets/icons/like_filled.png" : "assets/icons/like.png", color: Colors.white, width: 25, height: 25),
          ),
          InkWell(
            onTap: () {
              index = 4;
              setState(() {});
            },
            child: CircleAvatar(
              radius: 17,
              backgroundColor: index == 4 ? Colors.white : Colors.black,
              child: const CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1564564295391-7f24f26f568b"),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getScreen() {
    switch (index) {
      case 0:
        return const HomeScreen();

      case 1:
        return const SearchScreen();

      case 2:
        return const HomeScreen();

      case 3:
        return const LikesScreen();

      case 4:
        return const ProfileScreen();

      default:
        return Container();
    }
  }

  AppBar showAppBar() {
    switch (index) {
      case 0:
        return AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          title: const Text(
            "Instagram",
            style: TextStyle(fontFamily: 'FontSpring', fontSize: 26),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                "assets/icons/messenger.png",
                color: Colors.white,
                width: 25,
                height: 25,
              ),
            )
          ],
        );

      case 1:
      case 3:
        return AppBar(
          toolbarHeight: 0.0,
          backgroundColor: Colors.black,
        );

      case 4:
        return AppBar(
            backgroundColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.lock_outline_rounded),
                    const SizedBox(width: 5),
                    _textUtils.bold18("junaidkhan892", Colors.white),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/icons/add_post.png", width: 20, height: 20, color: Colors.white),
                    const SizedBox(width: 15),
                    const Icon(Icons.menu)
                  ],
                )
              ],
            ));

      default:
        return AppBar(
          toolbarHeight: 0.0,
        );
    }
  }
}
