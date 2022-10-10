import 'package:flutter/material.dart';
import 'package:flutter_film/demo/const/movie_const.dart';

class ContainerBackGroundGrey extends StatelessWidget {
  const ContainerBackGroundGrey({super.key, required this.widget});
final Widget widget;
  final double _height = 18;
  final double _width = 9;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / _height,
        width: MediaQuery.of(context).size.width / _width,
        decoration: BoxDecoration(
          borderRadius: MovieConst.borderRadiusCircular50,
          color: MovieConst.color_grey,
        ),
        child: widget);
  }
}

