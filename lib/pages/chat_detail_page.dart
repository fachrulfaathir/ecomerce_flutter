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
              Text('Shoe Store', style: primaryTextStyle.copyWith(fontSize: 14)),
              Text('Online', style: secondaryTextStyle.copyWith(fontWeight: light, fontSize: 14))
            ],
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
    );
  }
}