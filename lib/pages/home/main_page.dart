import 'package:ecomerce_flutter/pages/home/chat_page.dart';
import 'package:ecomerce_flutter/pages/home/home_page.dart';
import 'package:ecomerce_flutter/pages/home/profile_page.dart';
import 'package:ecomerce_flutter/pages/home/wishlist_page.dart';
import 'package:ecomerce_flutter/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


 int currentIndex = 1;

  Widget floatingButton(){
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: secondaryColor,
      child : Image.asset('assets/icon_cart.png', width: 20, height: 22)
    );
  }

  Widget bottomNavigation() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: bgColor4, // gunakan 'color' bukan 'backgroundColor'
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Image.asset(
                'assets/icon_home.png', 
                width: 21, 
                color: currentIndex == 1 ? iconColorActive : iconColorInActive, 
                ),// Ubah warna ikon jika aktif
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Image.asset('assets/icon_chat.png', width: 20,
                 color: currentIndex == 2 ? iconColorActive : iconColorInActive, 
              ),
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                });
                },
            ),
            const SizedBox(width: 40), // ruang notch untuk FAB
            IconButton(
              icon: Image.asset('assets/icon_wishlist.png', width: 20, color: currentIndex == 3 ? iconColorActive : iconColorInActive, ),
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
            ),
            IconButton(
              icon: Image.asset('assets/icon_profile.png', width: 18, color: currentIndex == 4 ? iconColorActive : iconColorInActive, ),
              onPressed: () {
                setState(() {
                  currentIndex = 4;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 1:
        return const HomePage();
      case 2:
        return const ChatPage();
      case 3 :
      return const WishlistPage();
      case 4:
        return const ProfilePage();
      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      floatingActionButton: floatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNavigation(),
      body: body()

    );
  }
}