import 'package:ecomerce_flutter/pages/widget/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/theme.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  AppBar header(BuildContext context){
    return AppBar(
      centerTitle: true,
      title: Text('Your Cart', style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium)),
      backgroundColor: bgColor1,
      toolbarHeight: 70,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(Icons.chevron_left, color: primaryTextColor,)),
      automaticallyImplyLeading: false,
      elevation: 0,
    );
  }
  Widget emptyCart(){
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset('assets/icon_empty_cart.png', width: 79.41, height: 69,),
        SizedBox(height: 20,),
        Text('Opss! Your Cart is Empty', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
        ),
        SizedBox(height: 20,),
        Text("Let's find your favorite shoes", style: secondaryTextStyle.copyWith(fontSize: 14, fontWeight: regular),),
        SizedBox(height: 20,),
        SizedBox(
          height: 44,
          width: 152,
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: purpleTextColor, shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(6)
            )),
            onPressed: (){}, child: Text('Explore Store', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium))),
        )
      ],),
    );
  }

  Widget content(){
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin
      ),
      children: [
        CartCard()
      ],
    );
  }

  Widget customBottomNav(BuildContext context){
    return SizedBox(
      height: 195,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Text('Subtotal', style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: regular)),
                Text('\$287,96', style: priceTexStyle.copyWith(fontSize: 16, fontWeight: semiBold))
              ],
            ),
          ),
          SizedBox(height: 30),
          Divider(thickness: 0.5, color: subtitleTextColor),
          Container(
            
              margin: EdgeInsets.all(defaultMargin),
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20)
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/checkout");
                }, 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Continue to Checkout', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
                    Icon(
                        Icons.arrow_forward,
                        color: primaryTextColor, 
                      )
                ],
              )  
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(context),
      body: content() ,
      bottomNavigationBar: customBottomNav(context),
    );
  }
}