import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  /// SingleTickerProviderStateMixin
  /// single = 1개
  /// Ticker = frame 변경마다 체크
  /// providerstate = 상태제공
  /// mixin = minin 클래스(수정자)
  /// flutter frame은 초당 60

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 8, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarScreen"),
      ),
      body: _tabBar(),
    );
  }

  Widget _tabBar() {
    return TabBar(
        controller: tabController,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        labelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          
        ),
        overlayColor: MaterialStateProperty.all(
            // Colors.lightBlue.shade300),
            Colors.blueAccent.shade100),
        splashBorderRadius: BorderRadius.circular(20),
        indicatorWeight: 5,
        indicatorColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.tab,
        padding: EdgeInsets.symmetric(horizontal: 30),
        // indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
        labelPadding: EdgeInsets.symmetric(horizontal: 20),

        isScrollable: true,
        tabs: [
          Tab(text: "바지",height: 50),
          Tab(text: "상의"),
          Tab(text: "아우터"),
          Tab(text: "시계"),
          Tab(text: "모자"),
          Tab(text: "가방"),
          Tab(text: "원피스"),
          Tab(text: "신발"),
    ]);
  }
}
