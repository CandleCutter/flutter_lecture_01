import 'package:flutter/material.dart';

class DefaultTabControllerScreen extends StatefulWidget {
  const DefaultTabControllerScreen({super.key});

  @override
  State<DefaultTabControllerScreen> createState() =>
      _DefaultTabControllerScreenState();
}

class _DefaultTabControllerScreenState extends State<DefaultTabControllerScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
        length: 3,
        vsync: this,
        initialIndex: 1,
        animationDuration: Duration(milliseconds: 500));
    tabController.addListener(() {
      print(tabController.index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DefaultTabControllerScreen"),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            _tabBar(),
            SizedBox(
              height: 300,
              child: _tabBarView(),
            )
          ],
        ),
      ),
    );
  }

  TabBar _tabBar() {
    return TabBar(
        controller: tabController,
        labelColor: Colors.black,
        indicatorWeight: 5,
        indicatorColor: Colors.black,
        tabs: [
          Tab(text: "탭 1"),
          Tab(text: "탭 2"),
          Tab(text: "탭 3"),
        ]);
  }

  ///pageview 사용하는 벙법
  /// taVarview 사용하는 방법
  TabBarView _tabBarView() {
    return TabBarView(
        controller: tabController,
        viewportFraction: 0.8,
        children: [
          Container(
            color: Colors.red,
            margin: EdgeInsets.symmetric(horizontal: 10),
          ),
          Container(
            color: Colors.blue,
            margin: EdgeInsets.symmetric(horizontal: 10),
          ),
          Container(
            color: Colors.green,
            margin: EdgeInsets.symmetric(horizontal: 10),
          ),
        ]);
  }
}
