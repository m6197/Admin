

import 'package:flutter/material.dart';

import '../homescreen_components/homescreen.dart';
import '../homescreen_components/setting_screen.dart';








class navscreen extends StatefulWidget {


  @override
  State<navscreen> createState() => _navscreenState();
}
class _navscreenState extends State<navscreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const homescrren(),
    setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
         iconSize: 30,
         selectedItemColor: const Color.fromRGBO(1, 205, 170,70),
         unselectedItemColor: const Color.fromRGBO(1, 205, 170,170),
         showSelectedLabels: false,
         showUnselectedLabels: false,
         currentIndex: currentIndex,
         onTap: (index)
         {
           setState(() {
             currentIndex=index;
           });
         },
         items: [
           const BottomNavigationBarItem(
               icon: ImageIcon(
                 AssetImage(
                   'assets/image/noun-home-4796082.png',
                 ),
               ),
             label: '',
           ),
           const BottomNavigationBarItem(
             icon: ImageIcon(
               AssetImage(
                 'assets/image/settings.png',
               ),
             ),
             label: '',
           ),
         ],
       ),

    );
  }
}
