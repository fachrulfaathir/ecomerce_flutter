
import 'package:ecomerce_flutter/pages/widget/checkout_card.dart';
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

  Widget content(BuildContext context){
    return Container(
      color: bgColor3,
      padding: EdgeInsets.all(defaultMargin),
      child: ListView(
        children: [
          Text("List Items", style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),),
          SizedBox(height: 12,),
          CheckoutCard(),
          CheckoutCard(),
          Container(
            margin : EdgeInsets.only(top: 26),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bgColor4,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Address Details", style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),),
                SizedBox(height: 12,),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/icon_store_location.png', width: 40,),
                        Image.asset('assets/icon_line.png', height: 30,),
                        Image.asset('assets/icon_your_address.png', width: 40,)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 12,),
                        Text("Store Location", style: secondaryTextStyle.copyWith(fontSize: 12),),
                        SizedBox(height: 2,),
                        Text("Adidas Core", style: primaryTextStyle.copyWith(fontWeight: medium),),
                        SizedBox(height: 30,),
                        Text("Your Address", style: secondaryTextStyle.copyWith(fontSize: 12),),
                        SizedBox(height: 2,),
                        Text("Marsemoon", style: primaryTextStyle.copyWith(fontWeight: medium),)
                      ],
                    )
                  ]
                )
              ],
            )
          ),
          Container(
            margin : EdgeInsets.only(top:defaultMargin),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bgColor4,
              borderRadius: BorderRadius.circular(12)
            ),
            child : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Payment Summary', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Product Quantity", style: secondaryTextStyle.copyWith(fontSize: 12),),
                  Text("2 Items", style: primaryTextStyle.copyWith(fontWeight: medium),)
                ],
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Product Price", style: secondaryTextStyle.copyWith(fontSize: 12),),
                  Text("\$287,96", style: primaryTextStyle.copyWith(fontWeight: medium),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Shipping", style: secondaryTextStyle.copyWith(fontSize: 12),),
                  Text("Free", style: primaryTextStyle.copyWith(fontWeight: medium),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total", style: priceTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),),
                  Text("\$287,96", style: priceTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),)
                ],
              )
            ],)
          ),
          SizedBox(height: defaultMargin,),
          Divider(
            thickness: 1,
            color: subtitleTextColor,
          ),
          SizedBox(height: defaultMargin,),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: TextButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/checkout-success', (route) => false);
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
              child: Text("Checkout Now", style: primaryTextStyle.copyWith(fontSize: 16, color: const Color(0xffB7B6BF)),),
            ),
          ),
          
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor2,
      appBar: header(context),
      body: content(context),
    );
  }
}