import 'package:flutter/material.dart';
import 'package:flutter_film/demo/const/movie_const.dart';

class MiniContainer extends StatelessWidget {
  const MiniContainer({super.key, required this.image});
final String image;
final double _width = 6.5;
final double _height = 14;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / _width,
      height: MediaQuery.of(context).size.height / _height,
      decoration: BoxDecoration(
          borderRadius: MovieConst.borderRadiusCircular20,
          color: MovieConst.color_white),
      child: ClipRRect(borderRadius: MovieConst.borderRadiusCircular20,
        child: Image.asset(image,
            fit: BoxFit.cover),
      ),
    );
  }
}