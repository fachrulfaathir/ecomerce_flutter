import 'package:ecomerce_flutter/pages/widget/loading_button.dart';
import 'package:ecomerce_flutter/providers/auth_provider.dart';
import 'package:ecomerce_flutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
   TextEditingController usernameController = TextEditingController();
   TextEditingController emailController = TextEditingController();
   TextEditingController passwordController = TextEditingController();

   bool isLoadingButton = false;
@override
Widget build(BuildContext context) {
  AuthProvider authProvider = Provider.of<AuthProvider>(context);
    
  handleSignUp() async {

    setState(() {
      isLoadingButton = true;
    });


    if(await authProvider.register(name: nameController.text, username: usernameController.text, email: emailController.text, password: passwordController.text))
    {
    
     Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
    } else {
            ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: alertColor,
                         content: Text('Gagal Register!', textAlign: TextAlign.center,)
                        )
        );
    }
    setState(() {
      isLoadingButton = false;
    });
 
  }

  Widget header(){
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children : [
          Text('Sign Up', style: primaryTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),),
          SizedBox(height: 2,),
          Text('Register and Happy Shoping', style: subtitleTextStyle.copyWith(fontSize: 16),)
        ]
      ),
    );
    }

    Widget fullNameInput(){
      return Container(
        margin : EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Full Name', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
            SizedBox(height: 12,),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color:  bgColor2,
                borderRadius: BorderRadius.all( Radius.circular(12))
              ),
              child: Center(
                child:  Row (
                  children: [
                    Image.asset('assets/icon_name.png', width : 17),
                    SizedBox(width: 16,),
                    Expanded(child: TextFormField(
                      controller: nameController,
                      style: primaryTextStyle,
                      decoration : InputDecoration.collapsed(hintText: 'Your Full Name', hintStyle: subtitleTextStyle)
                    ))
                  ],
                ),
              ),
            ),
          ],
        )
      );
    }

    Widget userNameInput(){
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children : [
            Text('Username', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
            SizedBox(height: 12,),
            Container (
              height: 50,
              padding : EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: bgColor2,
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child : Center(
                child : Row(
                  children : [
                    Image.asset('assets/icon_username.png', width: 17),
                    SizedBox(width: 16,),
                    Expanded(
                      child: TextFormField(
                        controller: usernameController,
                        style : primaryTextStyle,
                        decoration : InputDecoration.collapsed(hintText: 'Your Username', hintStyle: subtitleTextStyle))
                      )
                  ]
                ),
              )
            )
          ]
        ),
      );
    }

    Widget emailInput(){
      return Container(
        margin : EdgeInsets.only(top: 20),
        child : Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children : [
            Text('Email Address', style : primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
            SizedBox(height: 12,),
            Container (
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration (
                color: bgColor2,
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child : Center(
                child : Row(
                  children: [
                    Image.asset('assets/icon_email.png', width: 17,),
                    SizedBox(width: 16,),
                    Expanded(child : TextFormField(
                      controller: emailController,
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(hintText: 'Your Email Address', hintStyle: subtitleTextStyle),
                    ))
                  ],
                )
              )
            )
          ]
        )
      );
    }

    Widget passwordInput(){
      return Container(
        margin : EdgeInsets.only(top : 20),
         child : Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Password', style : primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
              SizedBox(height: 12,),
              Container (
                height : 50,
                padding: EdgeInsets.symmetric(horizontal : 20),
                decoration: BoxDecoration(
                  color: bgColor2,
                  borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child : Center(
                child : Row(    
                 children : [
                  Image.asset('assets/icon_password.png', width: 17,),
                  SizedBox(width: 16,),
                  Expanded(child : TextFormField(
                    controller: passwordController,
                    style: primaryTextStyle,
                    obscureText: true,
                    decoration: InputDecoration.collapsed(hintText: 'Your Password', hintStyle: subtitleTextStyle),
                  ))
                 ]
                )
              )
            )
          ],
         )
      );
    }

    Widget signUpButton(BuildContext context){
      
      return Container (
        height:50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        child : TextButton(
          onPressed: handleSignUp,
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
          ),
          child: Text('Sign Up', style : primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium)),
        )
      );
    }

    Widget footer(BuildContext context){
      return Container(
        margin : EdgeInsets.only(bottom: 30),
        child : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Already have an account?', style : subtitleTextStyle.copyWith(fontSize: 14))
            ,
            GestureDetector(
              onTap : () {
                Navigator.pop(context);
              },
              child : Text('Sign In', style: purpleTextStyle.copyWith(fontSize: 14),)
            )
          ],
        )
      );
    }

    print('isLoadingButton: ${isLoadingButton}');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor1,
      body:  SafeArea(
        child:  Container (
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              fullNameInput(),
              userNameInput(),
              emailInput(),
              passwordInput(),
              isLoadingButton ? LoadingButton() : signUpButton(context),
              Spacer(),
              footer(context)
            ],
          ),
        ),
      ),
    );
  }
}