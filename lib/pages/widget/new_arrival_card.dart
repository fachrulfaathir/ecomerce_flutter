import 'package:ecomerce_flutter/theme.dart';
import 'package:flutter/material.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 12, bottom: defaultMargin),
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: primaryTextColor,
              borderRadius: BorderRadius.circular(20)
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Image.asset('assets/image_shoes.png', fit: BoxFit.cover,)),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Football', style: secondaryTextStyle.copyWith(fontSize: 12)),
                  SizedBox(height: 6,),
                  Text('Predator 20.3 Firm Ground', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),),
                  SizedBox(height: 6,),
                  Text('\$68,47' , style: priceTextStyle.copyWith(fontWeight: medium, fontSize: 14),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}