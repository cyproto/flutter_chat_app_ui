import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SingleChatTileHomeScreen extends StatelessWidget {
  final String name;
  final String message;
  final String profileImageUrl;
  final String chatTime;
  final int unreadMessageCount;

  SingleChatTileHomeScreen(
    this.name,
    this.message,
    this.profileImageUrl,
    this.chatTime,
    this.unreadMessageCount,
  );

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      secondaryActions: <Widget>[
        IconSlideAction(
          color: Colors.black45,
          icon: Icons.more_horiz,
          onTap: () {},
        ),
        IconSlideAction(
          color: Colors.red,
          icon: Icons.delete,
          onTap: () {},
        ),
      ],
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 0,
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(profileImageUrl),
                    backgroundColor: Colors.transparent,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text(
                          message,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(chatTime),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
