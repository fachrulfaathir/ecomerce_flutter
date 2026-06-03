import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/theme.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  AppBar header(BuildContext context){
    return AppBar(
      toolbarHeight: 124,
      centerTitle:true,
      automaticallyImplyLeading: false,
      backgroundColor: bgColor1,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(defaultMargin),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/image_profile.png', width: 64, height: 64,),
              ),
              SizedBox(width: 16,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hallo, Alex', style : primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium)),
                    Text('@alexkeinn', style : genreTextStyle.copyWith(fontSize: 14))
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
                },
                child: Image.asset('assets/button_exit.png', width: 20, height: 20,))
            ],
          ),
        ),
      )
    );
  }

  Widget menuItem(String text){
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: secondaryTextStyle.copyWith(fontSize: 13, fontWeight: regular)),
          Icon(Icons.chevron_right, color: secondaryTextColor,)
        ],
      ),
    );
  }

  Widget content(BuildContext context){
    return Container(
    decoration: BoxDecoration(
      color: bgColor3,
    ),
    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
    width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Text('Account', style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold)),
          SizedBox(height: 16,),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/edit-profile');
            },
            child: menuItem('Edit Profile')),
          menuItem('Change Password'),
          menuItem('Notification Settings'),
          SizedBox(height: defaultMargin),
          Text('General', style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold)),
          SizedBox(height: 16,),
          menuItem('Help Center'),
          menuItem('Privacy & Policy'),
          menuItem('Term & Conditions'),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      body: content(context),
    );
  }
}