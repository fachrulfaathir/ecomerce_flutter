import 'package:ecomerce_flutter/theme.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatelessWidget {
  const ChatDetailPage({super.key});

  PreferredSizeWidget header(){
    return PreferredSize(preferredSize: Size.fromHeight(70), child: AppBar(
      backgroundColor: bgColor1,
      iconTheme: IconThemeData(
        color: primaryTextColor
      ),
      centerTitle: false,
      title: Row(
        children: [
          Image.asset('assets/image_shop_logo_online.png', width: 50, height: 50),
          SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Shoe Store', style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium)),
              Text('Online', style: secondaryTextStyle.copyWith(fontWeight: light, fontSize: 14))
            ],
          )
        ],
      ),
    ));
  }

  Widget chatInput(){
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 65,
              decoration: BoxDecoration(color: bgColor4, borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Center(child: 
              TextFormField(
                style: TextStyle(color: primaryTextColor),
                decoration: InputDecoration(hintText: 'Type Message...', hintStyle: subtitleTextStyle),
              )),
            ),
          ),
          SizedBox(width:20),
          Image.asset('assets/button_send.png', width: 45)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
    );
  }
}