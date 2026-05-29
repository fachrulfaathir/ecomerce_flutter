import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/theme.dart';

class ChatBubble extends StatelessWidget {

  final String text;
  final bool isSender;

  const ChatBubble({super.key, required this.text, required this.isSender});


  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.only(top: defaultMargin),
      child: Row(
        mainAxisAlignment: isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12), topLeft: Radius.circular(isSender ? 12 : 0), topRight:  Radius.circular(isSender ? 0 : 12) ),
            color: isSender ? bgColor5 : bgColor4
          ),
          child: Text(text, style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: regular),),
        ),]
      ),
    );
  }
}