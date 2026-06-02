import 'package:flutter/material.dart';
import 'package:ecomerce_flutter/theme.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  AppBar header(){
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
              Image.asset('assets/button_exit.png', width: 20, height: 20,)
            ],
          ),
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
    );
  }
}