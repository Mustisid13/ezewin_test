import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Appbottomnavigationbar extends HookWidget {
  const Appbottomnavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    final currentSelectedIndex = useState(0);
    return Container(
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white))),
      child: BottomNavigationBar(
          currentIndex: currentSelectedIndex.value,
          onTap: (value) {
            currentSelectedIndex.value = value;
          },
        
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          backgroundColor: Colors.white,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedItemColor: Colors.deepOrangeAccent,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: const TextStyle(
              fontSize: 12, color: Colors.black, height: 1.5),
          selectedLabelStyle: const TextStyle(
              fontSize: 12, color: Colors.deepOrangeAccent, height: 1.5),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                activeIcon:Icon(Icons.home)),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                activeIcon: Icon(Icons.search,color: Colors.deepOrangeAccent,)),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Orders',
                activeIcon: Icon(
                  Icons.shopping_cart,color: Colors.deepOrangeAccent,)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
                activeIcon: Icon(Icons.person,color: Colors.deepOrangeAccent,)),
            
          ]),
    );
  }
}
