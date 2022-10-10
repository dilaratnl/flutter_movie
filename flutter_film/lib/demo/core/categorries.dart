import 'package:flutter/material.dart';
import 'package:flutter_film/demo/const/movie_const.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Action', 'Horror', 'Comedy', 'Romantic'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => builCategory(index)),
          itemCount: categories.length,
        ));
  }
}

Widget builCategory(int index) {
  return GestureDetector(
    onTap: () {
      setState(() {
        var selectedIndex = index;
      });
    },
  );
}

void setState(Null Function() param0) {}
