
import 'package:ecomerce_flutter/theme.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  AppBar header(BuildContext context){
    return AppBar(
      backgroundColor: bgColor1,
      elevation: 0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => {Navigator.pop(context)},
        child: Icon(Icons.chevron_left, color: primaryTextColor,),
      ),
      title: Text("Checkout Details", style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),),
    );
  }

  Widget content(){
    return Container(
      color: bgColor3,
      child: ListView(
        
        padding: EdgeInsets.all(defaultMargin),
        children: [
          Text("List Items", style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),),
          SizedBox(height: 12,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: bgColor4
      
            ),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/image_shoes.png', width: 60, height: 60,)
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Terrex Urban Low", style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),),
                        SizedBox(height: 2,),
                        Text("\$143,98", style: priceTexStyle.copyWith(fontSize: 14, fontWeight: semiBold),)
                      ],
                    ),
                  ),
                  Text("2 Items", style: secondaryTextStyle.copyWith(fontSize: 12, fontWeight: regular),)
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor2,
      appBar: header(context),
      body: content(),
    );
  }
}