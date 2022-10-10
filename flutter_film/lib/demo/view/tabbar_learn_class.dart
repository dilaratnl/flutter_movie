import 'package:flutter/material.dart';

class TabbarLearnClass extends StatefulWidget {
  const TabbarLearnClass({super.key});

  @override
  State<TabbarLearnClass> createState() => _TabbarLearnClassState();
}

class _TabbarLearnClassState extends State<TabbarLearnClass>
    with TickerProviderStateMixin {
  late final TabController _TabController;
  static List<Tab> _tabBarList = [
    Tab(child: Text('Birinci Tab')),
    Tab(child: Text('İkinci Tab')),
    Tab(child: Text('Üçüncü Tab')),
    Tab(child: Text('Dördüncü Tab')),
    Tab(child: Text('Beşinçi Tab')),
    Tab(child: Text('Altıncı Tab')),
  ];

  static List<Widget> _tabbarView = [
    Column(
      children: [],
    ),
    Center(child: Text('İkinci Tab')),
    Center(child: Text('Üçüncü Tab')),
    Center(child: Text('Dördüncü Tab')),
    Center(child: Text('Beşinçi Tab')),
    Center(child: Container(color: Colors.orange)),
  ];
  @override
  void initState() {
    super.initState();
    _TabController = TabController(length: _tabBarList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabBarList.length,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            height: 100,
            color: Colors.red,
          ),
          TabBar(
            tabs: _tabBarList,
            controller: _TabController,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.red,
            isScrollable: true,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.indigo),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Container(
                child: TabBarView(
              children: _tabbarView,
              controller: _TabController,
              physics: NeverScrollableScrollPhysics(),
            )),
          )
        ]),
      ),
    );
  }
}