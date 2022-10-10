import 'package:flutter/material.dart';
import 'package:flutter_film/demo/const/movie_const.dart';
import 'package:flutter_film/demo/view/movie_detail.dart';
import 'package:flutter_film/demo/view/movie_home.dart';
import 'package:flutter_film/demo/view/movie_info.dart';
import 'package:flutter_film/demo/view/movie_play.dart';


class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  List<Widget> _listScreens = <Widget>[
   MovieHome(),
   MovieInfo(),
   MoviePlay()

  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final double _iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // gereksiz margin ve paddigleri siler 
      backgroundColor: MovieConst.color_darkgrey,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: _iconSize,
     //   selectedItemColor: Colo,
        type: BottomNavigationBarType.fixed,
        backgroundColor: MovieConst.color_darkgrey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border_outlined,
              ),
              label: ' '),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.play_circle_outline_rounded,
              ),
              label: ' '),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: ' ',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      body: _listScreens.elementAt(_selectedIndex),
    );
  }
}
