import 'package:ecomerce_flutter/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});


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
              icon: Image.asset('assets/icon_home.png', width: 21),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/icon_chat.png', width: 20),
              onPressed: () {},
            ),
            const SizedBox(width: 40), // ruang notch untuk FAB
            IconButton(
              icon: Image.asset('assets/icon_wishlist.png', width: 20),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/icon_profile.png', width: 18),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNavigation(),
      body: Center(
        child: Text("Main Page"),
      ),

    );
  }
}