import 'package:ecomerce_flutter/pages/chat_detail_page.dart';
import 'package:ecomerce_flutter/pages/home/chat_page.dart';
import 'package:ecomerce_flutter/pages/home/home_page.dart';
import 'package:ecomerce_flutter/pages/home/main_page.dart';
import 'package:ecomerce_flutter/pages/home/profile_page.dart';
import 'package:ecomerce_flutter/pages/home/wishlist_page.dart';
import 'package:ecomerce_flutter/pages/sign_in_page.dart';
import 'package:ecomerce_flutter/pages/sign_up_page.dart';
import 'package:ecomerce_flutter/pages/splash_page.dart';
import 'package:ecomerce_flutter/pages/edit_profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/main': (context) => const MainPage(),
        '/home_page': (context) => const HomePage(),
        '/chat_page': (context) => const ChatPage(),
        '/wishlist_page': (context) => const WishlistPage(),
        '/profile_page': (context) => const ProfilePage(),
        '/detail-chat': (context) => const ChatDetailPage(),
        '/edit-profile': (context) => const EditProfilePage(),
      },
    );
  }
}

