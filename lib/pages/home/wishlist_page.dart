import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/theme.dart';
import 'package:ecomerce_flutter/pages/widget/wishlist_card.dart';


class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});


  AppBar header(){
    return AppBar(
      centerTitle: true,
      title: Text('Favorite Shoes', style : primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium)),
      backgroundColor: bgColor1,
    );
  }

  Widget emptyWishList(){
    return Expanded(
      child: Container(
        color: bgColor3,
        width: double.infinity,
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          Image.asset('assets/image_wishlist.png', width: 74, height: 62,),
          SizedBox(height: 23,),
          Text('You don\'t have dream shoes?', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium)),
          SizedBox(height: 12,),
          Text('Let\'s find your favorite shoes', style: genreTextStyle,),
          SizedBox(height: 20,),
          SizedBox(
            width: 152,
            height: 44,
            child: 
            TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
            ),
             child: Text('Explore Store', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium)),
            ),
            )
         ] 
        )
      ),
    );
  }

  Widget content(){
    return Container(
      color: bgColor3,
      child: ListView(
        padding : EdgeInsets.only(top : defaultMargin, left: defaultMargin, right: defaultMargin),
        children: [
        WishlistCard(),  
        WishlistCard(),  
        WishlistCard(),  
        ]
      ),                                                                                                                                      
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}