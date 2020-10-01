import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String messageId;
  final String message;
  final String messageTime;
  final bool isSentMessage;
  final bool isDelivered;
  final bool isRead;

  MessageBubble({
    this.messageId,
    this.message,
    this.messageTime,
    this.isSentMessage,
    this.isDelivered,
    this.isRead,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isSentMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 150,
              child: Text(message),
              decoration: BoxDecoration(
                color: isSentMessage ? Colors.grey[350] : Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                  bottomLeft:
                      isSentMessage ? Radius.circular(25) : Radius.circular(0),
                  bottomRight:
                      isSentMessage ? Radius.circular(0) : Radius.circular(25),
                ),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 16,
              ),
              margin: EdgeInsets.only(
                top: 15,
                bottom: 5,
                right: 30,
                left: 30,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 15,
                  ),
                  width: MediaQuery.of(context).size.width - 150,
                  alignment: isSentMessage
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Text(messageTime),
                ),
                if (isSentMessage)
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 15,
                      right: 10,
                    ),
                    child: isDelivered && isRead
                        ? Icon(
                            Icons.done_all,
                            size: 18,
                          )
                        : Icon(
                            Icons.done,
                            size: 18,
                          ),
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
