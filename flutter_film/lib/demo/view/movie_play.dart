import 'package:flutter/material.dart';
import 'package:flutter_film/demo/const/movie_const.dart';

class MoviePlay extends StatefulWidget {
  const MoviePlay({super.key});

  @override
  State<MoviePlay> createState() => _MoviePlayState();
}

class _MoviePlayState extends State<MoviePlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MovieConst.color_darkgrey,
      body: Center(
          child: Text(
        MovieConst.moviePlay,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            color: MovieConst.color_orange,
            fontWeight: FontWeight.bold,
            fontSize: 30),
      )),
    );
  }
}
