import 'package:flutter/material.dart';

class SendNewMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      margin: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'New message...',
          filled: true,
          border: new OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              borderSide: BorderSide.none),
          suffixIcon: Container(
            margin: EdgeInsets.only(
              right: 2,
            ),
            decoration: BoxDecoration(
              color: Color(0xff128c7e),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2, color: Colors.grey[500], spreadRadius: 1)
              ],
            ),
            child: Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
