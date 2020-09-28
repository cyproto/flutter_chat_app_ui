import 'package:flutter/material.dart';

import '../models/home_screen_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff128c7e),
        child: Container(
          height: 350,
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 40, top: 70),
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
                      height: 70,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          if (index < HomeScreenModel.statusImages.length) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 3),
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    HomeScreenModel.statusImages[index]),
                                backgroundColor: Colors.transparent,
                              ),
                            );
                          }
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
