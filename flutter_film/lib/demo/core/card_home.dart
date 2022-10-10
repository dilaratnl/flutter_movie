import 'package:flutter/material.dart';
import 'package:flutter_film/demo/const/movie_const.dart';

class CardHome extends StatelessWidget {
  const CardHome(
      {super.key,
      required this.image,
      required this.text,
      required this.textone,
      required this.texttwo});
  final String image;
  final String text;
  final String textone;
  final String texttwo;
  final double _height = 4;
  final double _widtht = 1.1;
  final double _fontSize15 = 15;
  final double _fontSize18 = 18;
  final double _fontSize25 = 25;
  final double _posinedRightLocationTextRow = 185;
  final double _posinedBottomLocationTextRow = 100;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: MovieConst.borderRadiusCircular20,
      child: Stack(children: [
        Image.asset(
          image,
          height: MediaQuery.of(context).size.height / _height,
          width: MediaQuery.of(context).size.width / _widtht,
          fit: BoxFit.cover,
        ),
        Positioned(
          right: _posinedRightLocationTextRow,
          top: _posinedBottomLocationTextRow,
          child: Column(
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: MovieConst.color_white,
                    fontWeight: FontWeight.bold,
                    fontSize: _fontSize25),
              ),
              MovieConst.sizedBoxHeigt10,
              Text(
                textone,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: MovieConst.color_white, fontSize: _fontSize15),
              ),
              MovieConst.sizedBoxHeigt10,
              Row(
                children: [
                  Icon(Icons.star,
                      color: MovieConst.color_amber, size: _fontSize18),
                  MovieConst.sizedBoxWidht5,
                  Text(texttwo,
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: MovieConst.color_white,
                          fontSize: _fontSize15)),
                  MovieConst.sizedBoxWidht5,
                ],
              )
            ],
          ),
        ),
        Positioned(
          right: 10,
          bottom: 15,
          child: CircleAvatar(
              child: Icon(Icons.play_circle_outline,
                  color: MovieConst.color_white),
              backgroundColor: MovieConst.color_orange),
        )
      ]),
    );
  }
}
