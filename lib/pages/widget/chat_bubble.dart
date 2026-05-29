import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/theme.dart';

class ChatBubble extends StatelessWidget {

  final String text;
  final bool isSender;
  final bool hasProduct;

  const ChatBubble({super.key, required this.text, required this.isSender , required this.hasProduct});

  Widget previewProduct(){
    return Row(
       mainAxisAlignment: isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          width: 231,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12), topLeft: Radius.circular(isSender ? 12 : 0), topRight:  Radius.circular(isSender ? 0 : 12) ),
                color: isSender ? bgColor5 : bgColor4
          ),
          child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row( 
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset('assets/image_shoes.png', width: 70, height: 70,)
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('COURT VISION 2.0 SHOES', style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: regular)),
                          Text('\$57,15', style: priceTextStyle.copyWith(fontSize: 14, fontWeight: medium))
                        ],
                      ),
                    )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    width: 109,
                    child: OutlinedButton(
                    onPressed: (){}, 
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      side: BorderSide(color: primaryColor),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                    ),
                    child: Text('Add To Chart', style: purpleTextStyle.copyWith(fontSize: 12)), 
                    ),
                  ),
                  SizedBox(width: 8),
                  TextButton(
                    onPressed: (){}, 
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                    ),
                    child: Text('Buy Now', style: bgColor5TextStyle.copyWith(fontSize: 14, fontWeight: medium))
                    )
                ],
              )
            ],
          )
          ,
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.only(top: defaultMargin),
      child: Column(
        children: [
         hasProduct ?  previewProduct() : SizedBox(),
          Row(
          mainAxisAlignment: isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12), topLeft: Radius.circular(isSender ? 12 : 0), topRight:  Radius.circular(isSender ? 0 : 12) ),
              color: isSender ? bgColor5 : bgColor4
            ),
            child: Text(text, style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: regular),),
          ),]
        ),]
      ),
    );
  }
}