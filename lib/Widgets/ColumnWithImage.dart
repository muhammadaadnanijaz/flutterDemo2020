import 'package:flutter/material.dart';
import 'package:task/Constants/constants.dart';

import 'CircularImage.dart';

class ColumnWithImages extends StatelessWidget {
  final int count;
  final double height;
  final String screenType;
  final String title;
  ColumnWithImages({
    this.title,
    this.height,
    this.count,
    this.screenType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 10.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Wednessday, October 14',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10.0,
                      color: blackColor),
                )
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: [
                screenType == 'INVITES' 
                    ? CircularImage(
                        imageUrl: 'assets/images/plumber_profile.png',
                      )
                      : screenType == 'FAVORIT' && count==4 ?
                      Container(
                        height: 60.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/plumber_profile.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ): 
                      Row(
                        children: [
                          CircularImage(
                            imageUrl: 'assets/images/plumber_profile.png',
                          ),
                          CircularImage(
                            imageUrl: 'assets/images/c1.png',
                          ),
                          CircularImage(
                            imageUrl: 'assets/images/plumber_profile.png',
                          ),
                        ],
                      ),
                Spacer(),
                screenType == 'INVITES'
                    ? RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: blackColor)),
                        child: Text(
                          'CHAT HOST',
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.normal),
                        ),
                        onPressed: () {})
                    : screenType == 'FAVORIT'?
                            Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                  Icons.favorite,
                                  color: Colors.red[700],
                                ),
                                ):
                         
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.messenger_outline),
                                ),
                                screenType == 'HOSTIG'
                                    ? Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Stack(
                        children: [
                          Icon(
                            Icons.calendar_today,
                          ),
                          Positioned(
                            top: -1.0,
                            right: -1.0,
                            child: Stack(
                              children: [
                                Icon(Icons.brightness_1, 
                                color: Colors.red[700],
                                size: 12.0,
                          ),
                              ],
                            ))
                        ],
                      )
                      )
                                    : Container()
                              ],
                            )
                          
                      
              ],
            ),
            count == 1
                ? Column(
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Divider(
                        thickness: 1.0,
                        color: Colors.black26,
                      )
                    ],
                  )
                : Container(),
          ],
        ));
  }
}
