import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  AppBar header(BuildContext context){
    return AppBar(
      leading: Padding(padding: EdgeInsets.only(left: 10), child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(Icons.close, color: primaryTextColor,))),
      backgroundColor: bgColor1,
      centerTitle: true,
      title: Text('Edit Profile', style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium)),
      elevation: 0,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: defaultMargin),
          child: GestureDetector(
            onTap: (){},
            child: Icon(Icons.check, color: primaryColor,)))
      ]
    );
  }

  Widget inputSection(String title, String hintText){
    return Container(
      margin: EdgeInsets.only(top:24),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children : [
          Text(title, style: secondaryTextStyle.copyWith(fontSize: 13, fontWeight: regular)),
          TextFormField(
            style:primaryTextStyle,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: secondaryTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color:subtitleTextColor)
              )
            )
          ),
        ]
      )
    );
  }

  Widget content(){
    return Container(
      decoration: BoxDecoration(
        color: bgColor3,
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        children:[
          Container(
            width: 120,
            height: 120,
            margin: EdgeInsets.only(top: defaultMargin),
            decoration: BoxDecoration(
              shape:BoxShape.circle,
              image:DecorationImage(
                image: Image.asset('assets/image_profile.png').image,
                fit: BoxFit.cover
              )
            )
          ),
          SizedBox(height: 4,),
          inputSection('Name', 'Your Name'),
          inputSection('Username', 'Your Username'),
          inputSection('Email Address', 'Your Email Address'),
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      body: content(),
    );
  }
}