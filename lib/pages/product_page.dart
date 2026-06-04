import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/theme.dart';


class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  
  int currentIndex = 0;

  Widget indicator(int index) {
    return Container(
      width: currentIndex == index ? 16 : 4,
      height: 4,
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: currentIndex == index ? primaryColor : newArrivalColor,
      ),
    );
  }


  Widget header( BuildContext context) {

   final List images = [
      'assets/image_shoes2.png',
      'assets/image_shoes.png',
      'assets/image_shoes3.png',
    ];

    int index = -1;
 
   return Container(
    color: imageColorShoes,
     child: Column(
       children: [
        Container(
        padding: EdgeInsets.only(
          top: 25,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left,
                color: bgColor1,
              ),
            ),
            GestureDetector(
              onTap: () {
              },
              child: Icon(
                Icons.shopping_bag,
                color: bgColor1,
              ),
            ),
          ],
        ),
       ),
       CarouselSlider(items : images.map((image) => Image.asset(image, width: MediaQuery.of(context).size.width, height : 310, fit: BoxFit.cover,)).toList(), 
       options: CarouselOptions(
        initialPage: 0,
        onPageChanged: (index, reason) {
          setState(() {
            currentIndex = index;
          });
        },
         height: 310,
         viewportFraction: 1,
         enableInfiniteScroll: false
       )
       )
       ,
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: images.map((e) {
          index++;
          return indicator(index);
          }).toList()
       ),
       SizedBox(height: 17,),
       ],
     ),
   );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            header(context),
          ],
        ),
      );
  }
}