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
  bool isWhistlist = false;


  Future<void> showSuccessDialog() async{
    return showDialog(context: context, builder: (BuildContext context) => SizedBox(
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      child: AlertDialog(backgroundColor: bgColor3, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultMargin)
              ),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.close,
                          color: primaryTextColor,
                        ),
                      ),
                    ),
                    Image.asset('assets/icon_success.png', width: 100, height: 100,),
                    SizedBox(height: 12,),
                    Text('Hurray :)', style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),),
                    SizedBox(height: 12,),
                    Text('Item added successfully', style: secondaryTextStyle.copyWith(fontSize: 14, fontWeight: regular),) ,
                    SizedBox(height: 20,),
                    Container(
                      height: 44,
                      width: 144,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: TextButton(onPressed: (){}, 
                      style: TextButton.styleFrom(backgroundColor: purpleTextColor),
                      child: 
                      Text('View My Cart', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),)
                      ),
                    )
                  ],
                ),
              ),
          ),
    ));
  }

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

    List images = [
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
       ),
       SizedBox(height: 20,),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: images.map((e) {
          index++;
          return indicator(index);
          }).toList()
       ),
       ],
     ),
   );
  }

  Widget familiarShoesCard(String imageUrl, int index) {
    return Container(
      width: 54,
      height: 54,
      margin: EdgeInsets.only( right: 16, left: index == 1 ? 16 : 0 ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(image: AssetImage(imageUrl))
      ),
    );
  }

  Widget content(){
    int index = 0;


   List familiarImages = [
      'assets/image_shoes.png',
      'assets/image_shoes2.png',
      'assets/image_shoes3.png',
      'assets/image_shoes4.png',
      'assets/image_shoes5.png',
      'assets/image_shoes6.png',
      'assets/image_shoes7.png',
      'assets/image_shoes8.png',
    ];

    return Container(
      margin: EdgeInsets.only(top: 17), 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        color: bgColor1,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: defaultMargin, left: defaultMargin, right: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children : [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('TERREX URBAN LOW', style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold)),
                  SizedBox(height: 6,),
                  Text('Hiking', style: secondaryTextStyle.copyWith(fontSize: 12, fontWeight: regular)),
                ],
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isWhistlist = !isWhistlist;
                    });

                    if(isWhistlist){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: secondaryColor,
                        content: Text('Has been added to the Whitelist', textAlign: TextAlign.center,)
                        )
                    );
                    }else{
                       ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: alertColor,
                          content: Text('Has been removed from the Whitelist', textAlign: TextAlign.center,)
                        )
                    );
                    }
                  },
                  child: Image.asset(
                    isWhistlist ? 'assets/button_wishlist_blue.png' : 'assets/button_wishlist.png'
                    , width: 40, height: 40,),
                )
              ]
            ),
          ),

          

          // * PRICE
          Container(
            margin: EdgeInsets.only(top: 20, left: defaultMargin, right: defaultMargin),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: bgColor2,
              borderRadius: BorderRadius.circular(4)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children : [
                Text('Price starts from', style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: regular)),
                Text('\$143,98', style: priceTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
              ]
            ),
          ),

          // * Description
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            width: double.infinity,
            padding: EdgeInsets.only( left: defaultMargin, right: defaultMargin),
            child : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children : [
                Text('Description', style : primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium)),
                SizedBox(height: 12,),
                Text('Unpaved trails and mixed surfaces are easy you have the traction and support you need. Casual enough for the daily commute.', style: subtitleTextStyle.copyWith(fontSize: 14, fontWeight: light)),
              ]
            )
          ),

          // * Fimiliar Shoes
         Container(
            margin: EdgeInsets.only(top: defaultMargin),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: defaultMargin),
                  child: Text('Fimiliar Shoes', style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium))),
                SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: 
                    familiarImages.map(
                      (image) {
                       index++; 
                        return familiarShoesCard(image, index);
                        
                      }
                        ).toList(),
                  ),
                )
              ],
            ),
           ),

        Container(
              margin: EdgeInsets.all(defaultMargin),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/detail-chat');
                    },
                    child: Image.asset('assets/button_chat.png', width: 54, height: 54,)),
                    SizedBox(width: 16,),
                    Expanded(
                      child: SizedBox(
                        height: 54,
                        child: TextButton(onPressed: () {
                              showSuccessDialog();
                        }, 
                        style: TextButton.styleFrom(
                           shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(12)
                           ),
                            backgroundColor: primaryColor
                        ), child: Text('Add to Cart', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),)),
                      ),
                    )
                ],
              ),
          )

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: imageColorShoes,
        body: ListView(
          children: [
            header(context),
            content()
          ],
        ),
      );
  }
}