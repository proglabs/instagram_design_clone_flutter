import 'package:flutter/material.dart';
import 'package:instagram_clone/dummy_data/suggested_posts_model.dart';
import 'package:instagram_clone/utils/text_utils.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextUtils _textUtils = TextUtils();

  List<SuggestedPostModel> suggestedPostList = [];

  @override
  void initState() {
    super.initState();

    addData();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          searchBarWidget(),
          const SizedBox(
            height: 10,
          ),
          suggestedPostsWidget()
        ],
      ),
    );
  }

  Widget searchBarWidget() {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFF262626)),
      child: Row(
        children: [
          const Expanded(
            child: Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
            flex: 1,
          ),
          Expanded(
            child: _textUtils.normal16("Search", const Color(0xFF3E3E3E)),
            flex: 6,
          )
        ],
      ),
    );
  }

  Widget suggestedPostsWidget() {
    return Column(
      children: [
        for (int i = 0; i < suggestedPostList.length; i++)
          if (suggestedPostList[i].containsVideo) showWithVideoWidget(i) else showWithoutVideoWidget(i)
      ],
    );
  }

  Widget showWithVideoWidget(int index) {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      child: Row(
        children: [
          Expanded(
            flex: 1,
              child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.335,
                height: MediaQuery.of(context).size.width * 0.335,
                child: Image.network(
                  suggestedPostList[index].contentLink1,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.335,
                height: MediaQuery.of(context).size.width * 0.335,
                child: Image.network(
                  suggestedPostList[index].contentLink2,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          )),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.only(left: 2),
              height: MediaQuery.of(context).size.width * 0.67,
              child:Image.network(
                suggestedPostList[index].contentLink3,
                fit: BoxFit.fill,
              ),
            )
          ),
        ],
      ),
    );
  }

  Widget showWithoutVideoWidget(int index) {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(right: 1),
              height: MediaQuery.of(context).size.width * 0.33,
              child: Image.network(
                suggestedPostList[index].contentLink1,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(right: 1,left: 1),
              height: MediaQuery.of(context).size.width * 0.33,
              child: Image.network(
                suggestedPostList[index].contentLink2,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(left: 1),
              height: MediaQuery.of(context).size.width * 0.33,
              child: Image.network(
                suggestedPostList[index].contentLink3,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void addData() {
    suggestedPostList.add(SuggestedPostModel(
        false,
        "https://assets.vogue.com/photos/5e738f594fc08a00086af5ee/master/pass/GettyImages-1206321276.jpg",
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/celebrities-cancer-1568667554.jpg?crop=0.490xw:0.981xh;0.502xw,0.00321xh&resize=640:*",
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2020%2F03%2F13%2Fdwayne-johnson.jpg&q=85"));

    suggestedPostList.add(SuggestedPostModel(
        true,
        "https://assets.vogue.com/photos/5e738f594fc08a00086af5ee/master/pass/GettyImages-1206321276.jpg",
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/celebrities-cancer-1568667554.jpg?crop=0.490xw:0.981xh;0.502xw,0.00321xh&resize=640:*",
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2020%2F03%2F13%2Fdwayne-johnson.jpg&q=85"));

    suggestedPostList.add(SuggestedPostModel(
        false,
        "https://assets.vogue.com/photos/5e738f594fc08a00086af5ee/master/pass/GettyImages-1206321276.jpg",
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/celebrities-cancer-1568667554.jpg?crop=0.490xw:0.981xh;0.502xw,0.00321xh&resize=640:*",
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2020%2F03%2F13%2Fdwayne-johnson.jpg&q=85"));

    suggestedPostList.add(SuggestedPostModel(
        true,
        "https://assets.vogue.com/photos/5e738f594fc08a00086af5ee/master/pass/GettyImages-1206321276.jpg",
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/celebrities-cancer-1568667554.jpg?crop=0.490xw:0.981xh;0.502xw,0.00321xh&resize=640:*",
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2020%2F03%2F13%2Fdwayne-johnson.jpg&q=85"));
  }
}
