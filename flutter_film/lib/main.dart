import 'package:flutter/material.dart';
import 'package:flutter_film/demo/core/categorries.dart';
import 'package:flutter_film/demo/view/bottom_navigationbar.dart';
import 'package:flutter_film/demo/view/movie_home.dart';
import 'package:flutter_film/demo/view/movie_detail.dart';
import 'package:flutter_film/demo/view/movie_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),debugShowCheckedModeBanner: false,
      home:  BottomNavigationBarScreen(),
    );
  }
}

