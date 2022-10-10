import 'package:flutter/material.dart';
import 'package:flutter_film/demo/const/movie_const.dart';
import 'package:flutter_film/demo/view/movie_detail.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({super.key, required this.image, required this.text, required this.textone, required this.texttwo});
  final String image;
  final String text;
  final String textone;
  final String texttwo;
  final double _height = 4;
  final double _fontSize15 = 15;
  final double _fontSize18 = 18;
  final double _fontSize20 = 20;
  //final String textthree;

  @override
  Widget build(BuildContext context) {
   return GestureDetector(onTap: () {
     Navigator.of(context).push(MaterialPageRoute(builder: (context) => MovieDetail(),));
   },
     child: ClipRRect(
          borderRadius: MovieConst.borderRadiusCircular20,
          child: Stack(children: [
            Image.asset(
              image,
              height: MediaQuery.of(context).size.height / _height,
              width: MediaQuery.of(context).size.width, fit: BoxFit.cover,
            ),
            Positioned(
              left: 78,
              top: 100,
              child: Column(
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: MovieConst.color_white,
                        fontWeight: FontWeight.bold,fontSize: _fontSize20),
                  ),
                  MovieConst.sizedBoxHeigt5,
                  Text(
                    textone,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: MovieConst.color_white, fontSize:_fontSize15),
                  ), MovieConst.sizedBoxHeigt5,
                  Row(
                    children: [
                      Icon(Icons.star, color: MovieConst.color_amber, size: _fontSize18),
                      MovieConst.sizedBoxWidht5,
                      Text(texttwo,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                                  color: MovieConst.color_white, fontSize:_fontSize15)),
                      MovieConst.sizedBoxWidht5,
                      
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width / 12,
                height: MediaQuery.of(context).size.height / 20,
                child: Icon(Icons.delete_outline),
                color: MovieConst.color_transparent,
              ),
            )
          ]),
        ),
   );
  }
}

