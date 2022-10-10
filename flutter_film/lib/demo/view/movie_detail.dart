import 'package:flutter/material.dart';
import 'package:flutter_film/demo/const/movie_const.dart';
import 'package:flutter_film/demo/core/column_mini_container.dart';
import 'package:flutter_film/demo/core/text_large_detail.dart';
import 'package:flutter_film/demo/core/text_small_detail.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({super.key});
  final double _heightImage = 1.8;
  final double _fontSize12 = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MovieConst.color_darkgrey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              _clipRRectImage(context),
              MovieConst.sizedBoxHeigt20,
              Padding(
                padding: MovieConst.paddingGeneral8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _rowIconText(),
                    MovieConst.sizedBoxHeigt10,
                    _textyear(),
                    MovieConst.sizedBoxHeigt10,
                    _elevatedbuttonIconText(context),
                    MovieConst.sizedBoxHeigt10,
                    TextLargeDetail(text: MovieConst.detail_title),
                    MovieConst.sizedBoxHeigt10,
                    TextSmallDetail(text: MovieConst.detail),
                    MovieConst.sizedBoxHeigt15,
                    TextLargeDetail(text: MovieConst.detail_actor),
                    MovieConst.sizedBoxHeigt10,
                    _rowMiniContainerImage()
                  ],
                ),
              )
            ],
          ),
        ));
  }

  ClipRRect _clipRRectImage(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: MovieConst.radius20, topRight: MovieConst.radius20),
      child: Stack(
        children: [
          Image.asset(
            MovieConst.image_kgf,
            height: MediaQuery.of(context).size.height / _heightImage,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          _Icon(),
          _containerIconWatchNow(context),
          _containerIconText(context),
        ],
      ),
    );
  }

  Row _rowMiniContainerImage() {
    return Row(
      children: [
        MiniContainer(image: MovieConst.image_actor),
        MovieConst.sizedBoxWidht20,
        MiniContainer(image: MovieConst.image_actor_two),
        MovieConst.sizedBoxWidht20,
        MiniContainer(image: MovieConst.image_actor_one)
      ],
    );
  }

  Row _elevatedbuttonIconText(BuildContext context) {
    return Row(
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          label: Text(MovieConst.detail_like,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: MovieConst.color_white, fontSize: _fontSize12)),
          icon: Icon(
            Icons.thumb_up_alt,
            color: MovieConst.color_white,
          ),
        ),
        MovieConst.sizedBoxWidht10,
        ElevatedButton.icon(
            onPressed: () {},
            icon:
                Icon(Icons.add_comment_outlined, color: MovieConst.color_white),
            label: Text(MovieConst.detail_more,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: MovieConst.color_white, fontSize: _fontSize12))),
        MovieConst.sizedBoxWidht10,
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.share_outlined, color: MovieConst.color_white),
            label: Text(MovieConst.detail_share,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: MovieConst.color_white, fontSize: _fontSize12)))
      ],
    );
  }

  TextSmallDetail _textyear() =>
      TextSmallDetail(text: MovieConst.info_woman_one);

  Row _rowIconText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextLargeDetail(text: MovieConst.detail_kgf),
        Row(
          children: [
            Icon(
              Icons.star,
              color: MovieConst.color_amber,
              size: 15,
            ),
            MovieConst.sizedBoxWidht5,
            Column(
              children: [
                TextSmallDetail(text: MovieConst.detail_point),
              ],
            )
          ],
        )
      ],
    );
  }

  Positioned _Icon() {
    return Positioned(
        left: 18,
        top: 50,
        child: Icon(
          Icons.arrow_circle_left_outlined,
          color: MovieConst.color_white,
          size: 40,
        ));
  }

  Positioned _containerIconWatchNow(BuildContext context) {
    return Positioned(
        left: 50,
        top: 350,
        child: Container(
          height: MediaQuery.of(context).size.height / 19,
          width: MediaQuery.of(context).size.width / 2.8,
          decoration: BoxDecoration(
              borderRadius: MovieConst.borderRadiusCircular15,
              color: MovieConst.color_orange),
          child: Padding(
            padding: MovieConst.paddingGeneral8,
            child: Row(children: [
              Icon(Icons.play_circle_outline, color: MovieConst.color_white),
              MovieConst.sizedBoxWidht10,
              Text(
                MovieConst.detail_watch,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: MovieConst.color_white, fontSize: _fontSize12),
              )
            ]),
          ),
        ));
  }

  Positioned _containerIconText(BuildContext context) {
    return Positioned(
        right: 45,
        bottom: 75,
        child: Container(
          height: MediaQuery.of(context).size.height / 19,
          width: MediaQuery.of(context).size.width / 2.8,
          decoration: BoxDecoration(
              borderRadius: MovieConst.borderRadiusCircular15,
              color: MovieConst.color_white),
          child: Padding(
            padding: MovieConst.paddingGeneral8,
            child: Row(children: [
              Icon(Icons.bookmark_outline_rounded,
                  color: MovieConst.color_orange),
              MovieConst.sizedBoxWidht5,
              Text(
                MovieConst.detail_add,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: MovieConst.color_orange, fontSize: _fontSize12),
              )
            ]),
          ),
        ));
  }
}
