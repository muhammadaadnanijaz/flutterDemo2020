import 'package:flutter/material.dart';
import 'package:task/Widgets/ColumnWithImage.dart';

class Invites extends StatefulWidget {
  @override
  _InvitesState createState() => _InvitesState();
}

class _InvitesState extends State<Invites> {
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
                count: 1,
                screenType: 'INVITES',
              ),
              ColumnWithImages(
                title: 'Rounders in the park!',
                height: height,
                count: 1,
                screenType: 'INVITES',
              ),
              ColumnWithImages(
                title: 'Rounders in the park!',
                height: height,
                count: 1,
                screenType: 'INVITES',
              ),
              ColumnWithImages(
                title: 'Rounders in the park!',
                height: height,
                count: 1,
                screenType: 'INVITES',
              ),
              ColumnWithImages(
                title: 'Rounders in the park!',
                height: height,
                count: 2,
                screenType: 'INVITES',
              ),
            ],
          ),
        ),
      ),
    );
  }
}