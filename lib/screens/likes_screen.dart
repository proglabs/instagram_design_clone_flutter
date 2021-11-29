import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/text_utils.dart';

class LikesScreen extends StatefulWidget {
  const LikesScreen({Key? key}) : super(key: key);

  @override
  _LikesScreenState createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {

  final TextUtils _textUtils = TextUtils();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: _textUtils.bold20("Likes Screen", Colors.white),
      ),
    );
  }
}
