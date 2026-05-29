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

  Widget productReview(){
    return Container(
      width: 225,
      height: 74,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bgColor5,
        border: Border.all(
          color: primaryColor
        )
      ),
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset('assets/image_shoes.png', width: 54, height: 54,)
            ),
            SizedBox(width: 12,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('COURT VISION FROM THE PAST', style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: regular, overflow:TextOverflow.ellipsis ),),
                  Text('\$57,15', style: priceTextStyle.copyWith(fontSize: 14, fontWeight: medium),)
                ],
              ),
            ),
            SizedBox(width: 10,),
            IconButton(
              padding: EdgeInsets.zero,
              alignment: Alignment.topCenter,
              onPressed: () {},
              icon: Image.asset('assets/button_close.png', width: 22,height: 22,))
        ],
      ),
    );
  }

  Widget chatInput(){
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          productReview(),
          Row(
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
        ),]
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