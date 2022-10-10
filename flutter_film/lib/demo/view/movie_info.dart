import 'package:flutter/material.dart';
import 'package:flutter_film/demo/const/movie_const.dart';
import 'package:flutter_film/demo/core/card_info.dart';
import 'package:flutter_film/demo/view/movie_detail.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MovieConst.color_darkgrey,
      floatingActionButton: FloatingActionButton(
        onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => MovieDetail()));
          
        },
        child: Icon(Icons.add_comment_outlined,color:MovieConst.color_white,),

        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _appBarRow(context),
                MovieConst.sizedBoxHeigt20,
                _cardMovieDeadpool(),
                MovieConst.sizedBoxHeigt10,
                _cardMovieMaleficent(),
                MovieConst.sizedBoxHeigt10,
                _cardMovieWoman(),
                MovieConst.sizedBoxHeigt10,
                _cardMovieDeadpool(),
              ],
            ),
          )),
    );
  }

  CardInfo _cardMovieWoman() {
    return CardInfo(
        image: MovieConst.image_woman,
        text: MovieConst.info_woman,
        textone: MovieConst.info_woman_one,
        texttwo: MovieConst.info_woman_two);
  }

  CardInfo _cardMovieMaleficent() {
    return CardInfo(
        image: MovieConst.image_malefiz,
        text: MovieConst.info_maleficent,
        textone: MovieConst.info_maleficent_one,
        texttwo: MovieConst.info_maleficent_two);
  }

  CardInfo _cardMovieDeadpool() {
    return CardInfo(
      image: MovieConst.image_dead,
      text: MovieConst.info_deadpool,
      textone: MovieConst.info_deadpool_one,
      texttwo: MovieConst.info_deadpool_two,
    );
  }

  Row _appBarRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_rounded,
            color: MovieConst.color_white,
          )),
      MovieConst.sizedBoxWidht80,
      Text(
        MovieConst.info_watch,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: MovieConst.color_white, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
