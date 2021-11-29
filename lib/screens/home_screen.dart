import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/text_utils.dart';
import 'package:instagram_clone/widgets/post_view_widget.dart';
import 'package:instagram_clone/widgets/story_view_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with TickerProviderStateMixin {


  final TextUtils _textUtils = TextUtils();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 10,right: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(int i = 0 ; i < 20 ; i++)
                    Container(
                      width: 70,
                      margin: const EdgeInsets.only(right: 15),
                      child: Column(
                        children:  [
                         const StoryViewWidget(),
                          const SizedBox(height: 10,),
                          _textUtils.normal14Ellipsis("proglabsofficial", Colors.white)
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            for(int i = 0 ; i < 10 ; i++)
              const PostViewWidget(),
          ],
        ),
    );
  }
}
