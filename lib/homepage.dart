import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/tab/content_view.dart';
import 'package:flutter_application_1/tab/custom_tab.dart';
import 'package:flutter_application_1/tab/customer_tab_bar.dart';
import 'package:flutter_application_1/tab/layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<ContentView> contentViews = [
    ContentView(
        tab: const CustomTab(title: "Home"),
        content: TabLayout(child: const Home())),
    ContentView(
        tab: const CustomTab(title: "About"),
        content: TabLayout(
          child: Center(
              child: Container(color: Colors.blue, width: 100, height: 100)),
        )),
    ContentView(
        tab: const CustomTab(title: "Project"),
        content: TabLayout(
          child: Center(
              child: Container(color: Colors.red, width: 100, height: 100)),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: LayoutBuilder(builder: ((context, constraints) {
        if (constraints.maxWidth > 715) {
          return desktopView();
        } else {
          return mobileView();
        }
      })),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
  }

  Widget desktopView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTabBar(
          controller: tabController,
          tabs: contentViews.map((e) => e.tab).toList(),
        ),
        Expanded(
          // height: MediaQuery.of(context).size.height * 0.8,
          // width: MediaQuery.of(context).size.width * 0.8,
          child: TabBarView(
            controller: tabController,
            children: contentViews.map((e) => e.content).toList(),
          ),
        )
      ],
    );
  }

  Widget mobileView() {
    return Column();
  }
}
