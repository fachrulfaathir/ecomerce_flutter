import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key});




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top : 10 , bottom: 14, left: 12, right: 20),
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
                Text('Adidas NMD R1', style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),),
                SizedBox(height: 2,),
                Text('\$299,43', style: priceTextStyle.copyWith(fontSize: 14, fontWeight: medium),)
              ],
            ),
           ),
           Image.asset('assets/button_wishlist_blue.png', width: 34, height: 34,)
        ],
      ),
    );
  }
}