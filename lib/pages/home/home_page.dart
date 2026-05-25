import 'package:ecomerce_flutter/pages/widget/new_arrival_card.dart';
import 'package:ecomerce_flutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/pages/widget/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int selectedCategory = 0;


   Widget header(){
    return Row(
      children: [
       Expanded(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Halo, Yui', style: primaryTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),),
            Text('What do you want to buy?', style: subtitleTextStyle.copyWith(fontSize: 14),)
          ],
         ),
       )
      ,
       Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image_profile.png')
            )
          ),
        ),
      ],
    );
  }

  int selectedIndex = 0;

  Widget categories(List<String> dataCategories){
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
         children: List.generate(dataCategories.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = index;
              });
            },
            child: Container(
                margin: EdgeInsets.only(right: 12),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  color: selectedCategory == index ? primaryColor : transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: selectedCategory == index ? primaryColor : subtitleTextColor,
                  ),
                ),
                child: Text(
                  dataCategories[index],
                  style: primaryTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: medium,
                      color: selectedCategory == index ? Colors.white : subtitleTextColor,
                      ),
                    ),
                 ),
              );
            }
          ),
        )
      ),
    );
  }

  Widget titlePopularProduct(){
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: Text('Popular Products', style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),),
    );
  }

  Widget titleNewArrival(){
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: Text('New Arrivals', style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),),
    );
  }

  Widget popularProducts() {
  return  Container(
          margin: EdgeInsets.only(top: 14),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                  children: [
                    PopularProductCard(),
                    PopularProductCard(),
                    PopularProductCard(),
                  ]
                )
          )
    );
  }

  Widget newArrival(){
    return Container(
      margin: EdgeInsets.only(top: 14),

      child: Column(
        children: [
          NewArrivalCard(),
          NewArrivalCard(),
          NewArrivalCard(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
  List<String> dataCategories = ['All Shoes', 'Running', 'Training', 'Basketball', 'Hiking', 'Soccer'];
  return Container(
      margin: EdgeInsets.all(defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            categories(dataCategories),
            titlePopularProduct(),
            popularProducts(),
            titleNewArrival(),
            newArrival()
          ],
        ),
      ),        
    );
  }
}