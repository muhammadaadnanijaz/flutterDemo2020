import 'package:flutter/material.dart';
import 'package:task/Widgets/ColumnWithImage.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite>{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.white70,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ColumnWithImages(
                title: 'Bird watching london flying',
                height: height,
                count: 1,
                screenType: 'FAVORIT',
              ),
              ColumnWithImages(
                title: 'Rounders in the park!',
                height: height,
                count: 1,
                screenType: 'FAVORIT',
              ),
              ColumnWithImages(
                title: 'Rounders in the park!',
                height: height,
                count: 1,
                screenType: 'FAVORIT',
              ),
              ColumnWithImages(
                title: 'Rounders in the park!',
                height: height,
                count: 4,
                screenType: 'FAVORIT',
              ),
              ColumnWithImages(
                title: 'Rounders in the park!',
                height: height,
                count: 1,
                screenType: 'FAVORIT',
              ),
              
              ColumnWithImages(
                title: 'Rounders in the park!',
                height: height,
                screenType: 'FAVORIT',
              ),
              ColumnWithImages(
                title: 'Rounders in the park!',
                height: height,
                screenType: 'FAVORIT',
              ),
            ],
          ),
        ),
      ),
    );
  }
}