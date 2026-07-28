import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/theme.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        decoration: BoxDecoration(
          color: bgColor4,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/image_shoes.png', width: 60, height: 60,)
            ),
            SizedBox(width: 12,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Terrex Urban Low", style: primaryTextStyle.copyWith(fontWeight: semiBold),),
                  SizedBox(height: 2,),
                  Text("\$143,98", style: priceTextStyle,)
                ],
              ),
            ),
            Text("2 Items", style: secondaryTextStyle.copyWith(fontSize: 12),)
          ]
        ),
    );
  }
}