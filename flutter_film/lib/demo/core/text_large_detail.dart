import 'package:flutter/material.dart';
import 'package:flutter_film/demo/const/movie_const.dart';

class TextLargeDetail extends StatelessWidget {
  const TextLargeDetail({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: MovieConst.color_white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18));
  }
}