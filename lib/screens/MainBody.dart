import 'package:flutter/material.dart';
import 'package:restapicomments/screens/mycomments.dart';
import 'package:restapicomments/screens/myposts.dart';

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController=TabController(length: 2, vsync: this);
    return SafeArea(
      child: Scaffold(
      body: Column(
        children: [
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.black,
              tabs: [
                Tab(text:'Comments',
                  icon: Icon(Icons.comment,color: Colors.black,),
                ),
                Tab(
                  text: 'Posts',
                  icon: Icon(Icons.post_add,color: Colors.black,),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: TabBarView(
                controller: _tabController,
                children: [
                    MyComments(),
                    MyPosts(),
                ],
              ),
            ),
          ),
        ],
      ),


      ),
    );
  }
}
