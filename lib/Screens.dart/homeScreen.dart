import 'package:flutter/material.dart';
import 'package:task/Constants/constants.dart';
import 'package:task/Screens.dart/favorites.dart';
import 'package:task/Screens.dart/going.dart';
import 'package:task/Screens.dart/hosting.dart';
import 'package:task/Screens.dart/invites.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                title: Text(
                  'Your Meetups',
                  style: TextStyle(fontSize: 16.0, color: blackColor),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.map,
                      color: blackColor,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                  PopupMenuButton<WhyFarther>(
                    icon: Icon(Icons.more_vert_outlined, color: blackColor,),
                    onSelected: (WhyFarther result) { },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
                       PopupMenuItem<WhyFarther>(
                        value: WhyFarther.harder,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.person_add_alt_1, color: blackColor,),
                            ),
                            Text('Awaiting host approval', style: popUpMenuTextStyle
                            ),
                          ],
                        ),
                      ),
                       PopupMenuItem<WhyFarther>(
                        value: WhyFarther.smarter,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.sanitizer_outlined,
                               color: blackColor,),
                            ),
                            Text('Past Meetups', style: popUpMenuTextStyle
                            ),
                          ],
                        ),
                      ),
                       PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Test Achievments', style: popUpMenuTextStyle
                        ),
                      ),
                    ],
                  )
                ],
                bottom: TabBar(
                  indicatorColor: Colors.red[700],
                  tabs: <Widget>[
                    Tab(
                      child: Container(
                        child: Text(
                          'GOING (2)',
                          style: tabBarStyle,
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Text(
                          'Hosting(1)',
                          style: tabBarStyle,
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Text(
                          'Invites (5)',
                          style: tabBarStyle,
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red[700],
                            ),
                            Text(
                              '(7)',
                              style: tabBarStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: <Widget>[Going(), Hosting(), Invites(), Favorite()],
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.red[700],
                onPressed: () {},
                child: Icon(Icons.add),
              ),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: blackColor,
                unselectedItemColor: blackColor,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Stack(
                        children: [
                          Icon(
                            Icons.person,
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
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.assistant_navigation), label: ''),
                  BottomNavigationBarItem(
                      icon: Stack(
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
                      ),
                      label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.group), label: ''),
                  BottomNavigationBarItem(
                      icon: Stack(
                        children: [
                          Icon(
                            Icons.message_sharp,
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
                      ),
                      label: ''),
                ],
              ),
            )));
  }
}
enum WhyFarther { harder, smarter, selfStarter }
