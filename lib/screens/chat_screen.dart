import 'package:flutter/material.dart';

import '../models/chat_screen_model.dart';
import '../widgets/message_bubble.dart';
import '../widgets/send_new_message.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  final String profileImageUrl;

  ChatScreen(
    this.name,
    this.profileImageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: MediaQuery.of(context).viewInsets,
        height: MediaQuery.of(context).size.height - 50,
        child: Column(
          children: <Widget>[
            Container(
              height: 5,
              width: 40,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5)),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 4),
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
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Online',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.call,
                        color: Color(0xff128c7e),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemBuilder: (context, index) {
                  return MessageBubble(
                    messageId: messages[index].messageId,
                    message: messages[index].message,
                    messageTime: messages[index].messageTime,
                    isSentMessage: messages[index].isSentMessage,
                    isDelivered: messages[index].isDelivered,
                    isRead: messages[index].isRead,
                  );
                },
                itemCount: messages.length,
              ),
            ),
            Container(
              child: SendNewMessage(),
            )
          ],
        ),
      ),
    );
  }
}
