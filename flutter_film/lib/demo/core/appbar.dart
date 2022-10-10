import 'package:flutter/material.dart';
import 'package:flutter_film/demo/const/movie_const.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_rounded,
            color: MovieConst.color_white,
          )),
      MovieConst.sizedBoxWidht80,
      Text(
        text,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: MovieConst.color_white, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}