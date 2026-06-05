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
        onLongPress: () => Navigator.pop(context),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(context),
      body: emptyCart() ,
    );
  }
}