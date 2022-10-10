import 'package:flutter/material.dart';
import 'package:flutter_film/demo/const/movie_const.dart';
import 'package:flutter_film/demo/core/bolly_card.dart';
import 'package:flutter_film/demo/core/card_home.dart';
import 'package:flutter_film/demo/core/container_backgroundgrey.dart';

class MovieHome extends StatefulWidget {
  const MovieHome({super.key});

  @override
  State<MovieHome> createState() => _MovieHomeState();
}

class _MovieHomeState extends State<MovieHome> with TickerProviderStateMixin {
  late final TabController _TabController;
  static List<Tab> _tabBarList = [
    Tab(child: Text(MovieConst.home_actions)),
    Tab(child: Text(MovieConst.home_horror)),
    Tab(child: Text(MovieConst.home_drama)),
    Tab(child: Text(MovieConst.home_comedy)),
    Tab(child: Text(MovieConst.home_romandiccomedi)),
    Tab(child: Text(MovieConst.home_musical)),
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
        backgroundColor: MovieConst.color_darkgrey,
        appBar: _appBarTextIcon(context),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            _textFieldSearch(),
            MovieConst.sizedBoxHeigt15,
            _tabbarCategorries(),
            MovieConst.sizedBoxHeigt10,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              _textHollywood(context),
              _textSeeMore(context),
            ]),
            MovieConst.sizedBoxHeigt15,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: _rowCardImage(),
            ),
            MovieConst.sizedBoxHeigt20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _textBollywood(context),
                _textSeeMore(context),
              ],
            ),
            MovieConst.sizedBoxHeigt20,
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BollyCard(
                      image: MovieConst.image_radhe,
                      text: MovieConst.home_radhe,
                      texttwo: MovieConst.home_bollypoint),
                  MovieConst.sizedBoxWidht10,
                  BollyCard(
                      image: MovieConst.image_action,
                      text: MovieConst.home_action,
                      texttwo: MovieConst.home_bollypoint)
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  TabBar _tabbarCategorries() {
    return TabBar(
      tabs: _tabBarList,
      controller: _TabController,
      unselectedLabelColor: MovieConst.color_grey,
      labelColor: MovieConst.color_white,
      isScrollable: true,
      labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      indicator: BoxDecoration(
          borderRadius: MovieConst.borderRadiusCircular10,
          color: MovieConst.color_orange),
    );
  }

  Text _textBollywood(BuildContext context) {
    return Text(MovieConst.home_bollywood,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: MovieConst.color_white));
  }

  Row _rowCardImage() {
    return Row(
      children: [
        CardHome(
            image: MovieConst.image_enders,
            text: MovieConst.home_enders,
            textone: MovieConst.home_year,
            texttwo: MovieConst.info_woman_two),
        MovieConst.sizedBoxWidht5,
        CardHome(
            image: MovieConst.image_war,
            text: MovieConst.home_war,
            textone: MovieConst.home_year,
            texttwo: MovieConst.info_woman_two)
      ],
    );
  }

  Text _textSeeMore(BuildContext context) {
    return Text(
      MovieConst.home_see,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: MovieConst.color_orange, fontSize: 15),
    );
  }

  Text _textHollywood(BuildContext context) {
    return Text(MovieConst.home_hollywood,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: MovieConst.color_white));
  }

  TextField _textFieldSearch() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: MovieConst.borderRadiusCircular20),
          prefixIcon: Icon(
            Icons.search,
            color: MovieConst.color_grey,
          ),
          label: Text(
            MovieConst.home_search,
            style: TextStyle(color: MovieConst.color_grey),
          ),
          hintText: MovieConst.home_search),
    );
  }

  AppBar _appBarTextIcon(BuildContext context) {
    return AppBar(
      title: Text(MovieConst.appBar_title,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: MovieConst.color_orange, fontWeight: FontWeight.w700)),
      backgroundColor: MovieConst.color_darkgrey,
      centerTitle: true,
      actions: <Widget>[
        ContainerBackGroundGrey(
            widget: Image.asset(
          MovieConst.image_icon,
          fit: BoxFit.cover,
        ))
      ],
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: MovieConst.color_grey,
          )),
    );
  }
}
