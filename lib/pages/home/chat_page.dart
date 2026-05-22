import 'package:ecomerce_flutter/theme.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});


  Widget header(){
    return Row(
      children: [
       Expanded(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Halo, Yui', style: primaryTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),),
            Text('What do you want to buy?', style: subtitleTextStyle.copyWith(fontSize: 14),)
          ],
         ),
       )
      ,
       Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image_profile.png')
              )
            ),
                 ),
      ],
     
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Column(
        children: [
          header()
        ],
      ),        
    );
  }
}