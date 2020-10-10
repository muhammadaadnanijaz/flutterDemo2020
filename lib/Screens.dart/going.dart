import 'package:flutter/material.dart';
import 'package:task/Widgets/ColumnWithImage.dart';

class Going extends StatefulWidget {
  @override
  _GoingState createState() => _GoingState();
}

class _GoingState extends State<Going> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.white70,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ColumnWithImages(
                title: 'Walk in the park',
                height: height,
                count: 1,
              ),
              ColumnWithImages(
                title: 'Drink in the public',
                height: height,
                count: 2,
                 ),
            ],
          ),
        ),
      ),
    );
  }
}



