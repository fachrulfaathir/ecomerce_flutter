import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/theme.dart';

class PopularProductCard extends StatelessWidget {
  const PopularProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryTextColor,
      ),
      child: Container(
        padding: EdgeInsets.only(left : 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/image_shoes.png',
              width: 215,
              height: 150,
              fit: BoxFit.cover,
            ),
          
            Text(
              'Hiking',
              style: genreTextStyle.copyWith(fontSize: 12),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'COURT VISION 2.0',
              style: headingTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              '\$58,67',
              style: priceTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            )
          ]
          
        ),
      ),
    );
  }
}