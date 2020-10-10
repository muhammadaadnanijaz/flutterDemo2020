import 'package:flutter/material.dart';
import 'package:task/Widgets/ColumnWithImage.dart';
class Hosting extends StatefulWidget {
  @override
  _HostingState createState() => _HostingState();
}

class _HostingState extends State<Hosting> {
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
                title: 'Rounders in the park!',
                height: height,
                count: 2,
                screenType: 'HOSTIG',
              ),
            ],
          ),
        ),
      ),
    );
  }
}