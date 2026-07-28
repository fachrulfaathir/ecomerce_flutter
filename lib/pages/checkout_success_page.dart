import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/theme.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({super.key});

  AppBar header(){
    return AppBar(
      backgroundColor: bgColor1,
      elevation: 0,
      centerTitle: true,
      title: Text("Checkout Success", style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),),
    );
  }
    Widget content(BuildContext context){
    return Container(
      color: bgColor3,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon_empty_cart.png', width: 80,),
            SizedBox(height: 20,),
            Text("You made a transaction", style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),),
            SizedBox(height: 12,),
            Text("Stay at home while we prepare your dream shoes", style: secondaryTextStyle.copyWith(fontSize: 14), textAlign: TextAlign.center,),
            Container(
              width:195,
              height: 44,
              margin: EdgeInsets.only(top: defaultMargin),
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/home_page', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                ),
                child: Text("Order Other Shoes", style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),),
              ),
            ),
            SizedBox(height: 12,),
            Container(
              width: 195,
              height: 44,
              margin: EdgeInsets.only(top: 12),
              child: TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff39374B),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                ),
                child: Text("View My Order", style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium, color: Color(0xffB7B6BF)),),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      body: content(context),
    );
  }
}