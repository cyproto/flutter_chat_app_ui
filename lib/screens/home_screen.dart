import 'package:flutter/material.dart';

import '../models/home_screen_model.dart';
import '../widgets/single_chat_tile_home_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff128c7e),
      body: Column(
        children: [
          Container(
            color: Color(0xff128c7e),
            child: Container(
              height: 350,
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Chat app',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 50,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 40,
                          height: 75,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.teal[300],
                                    shape: BoxShape.circle,
                                  ),
                                  padding: EdgeInsets.all(
                                    5,
                                  ),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 4),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              }

                              if (index <
                                  HomeScreenModel.statusImages.length + 1) {
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 4),
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundImage: NetworkImage(
                                        HomeScreenModel
                                            .statusImages[index - 1]),
                                    backgroundColor: Colors.transparent,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 3,
                                          color: Colors.grey[600],
                                          spreadRadius: 2)
                                    ],
                                  ),
                                );
                              }
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FlatButton(
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsetsDirectional.only(end: 8),
                                    height: 2,
                                    width: 2,
                                    decoration: BoxDecoration(
                                      color: Colors.amber[200],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Text(
                                    'Messages',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                            FlatButton(
                              child: Text(
                                'Calls',
                                style: TextStyle(color: Colors.white38),
                              ),
                              onPressed: () {},
                            ),
                            FlatButton(
                              child: Text(
                                'Groups',
                                style: TextStyle(color: Colors.white38),
                              ),
                              onPressed: () {},
                            ),
                            RaisedButton(
                              child: Text(
                                'CREATE',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Colors.teal[300],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height - 350,
                child: ListView.builder(
                    itemCount: homeScreenChats.length,
                    itemBuilder: (context, index) {
                      return SingleChatTileHomeScreen(
                        homeScreenChats[index].name,
                        homeScreenChats[index].message,
                        homeScreenChats[index].profileImageUrl,
                        homeScreenChats[index].chatTime,
                        homeScreenChats[index].unreadMessageCount,
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
