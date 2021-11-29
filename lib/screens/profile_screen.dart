import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/text_utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin {
  final TextUtils _textUtils = TextUtils();

  late TabController tabController;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        controller: scrollController,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                              radius: 45, backgroundImage: NetworkImage("https://images.unsplash.com/photo-1564564295391-7f24f26f568b")),
                          const SizedBox(height: 10),
                          _textUtils.normal16("Junaid Khan", Colors.white)
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              _textUtils.bold20("16", Colors.white),
                              const SizedBox(height: 5),
                              _textUtils.normal14("Posts", Colors.white),
                            ],
                          ),
                          Column(
                            children: [
                              _textUtils.bold20("158", Colors.white),
                              const SizedBox(height: 5),
                              _textUtils.normal14("Followers", Colors.white)
                            ],
                          ),
                          Column(
                            children: [
                              _textUtils.bold20("1,425", Colors.white),
                              const SizedBox(height: 5),
                              _textUtils.normal14("Following", Colors.white)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(5)),
                        padding: const EdgeInsets.all(8),
                        child: Center(
                          child: _textUtils.normal16("Edit Profile", Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(5)),
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _textUtils.bold14("Story Highlights", Colors.white),
                            const SizedBox(
                              height: 5,
                            ),
                            _textUtils.normal14("Keep your favourite stories on your profile", Colors.white)
                          ],
                        ),
                        flex: 9,
                      ),
                      const Expanded(
                        child: Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                          size: 18,
                        ),
                        flex: 1,
                      )
                    ],
                  )),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  child: const Icon(Icons.add, size: 35),
                                  style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(side: BorderSide(color: Colors.white)),
                                      padding: const EdgeInsets.all(15),
                                      primary: Colors.transparent)),
                              const SizedBox(
                                height: 10,
                              ),
                              _textUtils.normal12("New", Colors.white)
                            ],
                          )),
                      for (int i = 0; i < 10; i++) favouriteStoriesWidget(),
                    ],
                  ),
                ),
              ),

              TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 0.8,
                indicatorPadding: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                controller: tabController,
                tabs: const [
                  Tab(icon: Icon(Icons.grid_on_rounded)),
                  Tab(icon: Icon(Icons.person_pin_outlined)),
                ],
              ),

              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    GridView.count(
                      controller: scrollController,
                      crossAxisCount: 3,
                      children: [
                        for (int i = 0; i < 9; i++)
                          Container(
                            margin: const EdgeInsets.only(right: 3, top: 3),
                            child: Image.asset(
                              "assets/images/dummy_post.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
                      ],
                    ),
                    GridView.count(
                      controller: scrollController,
                      crossAxisCount: 3,
                      children: [
                        for (int i = 0; i < 9; i++)
                          Container(
                            margin: const EdgeInsets.only(right: 3, top: 3),
                            child: Image.asset(
                              "assets/images/dummy_post.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget favouriteStoriesWidget() {
    return const Padding(
      padding: EdgeInsets.only(right: 10, left: 10),
      child: CircleAvatar(
        radius: 33,
        backgroundColor: Color(0xFF3E3E3E),
      ),
    );
  }
}
