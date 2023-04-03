import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_uts/main.dart';
import 'package:project_uts/screens/details_screen.dart';

class BottomNavItem extends StatefulWidget {
  final Function press;
  // final bool isActive;
  const BottomNavItem({
    super.key, 
    required this.press,
    // this.isActive = false,
  });

  @override
  State<BottomNavItem> createState() => _BottomNavItemState();
}

class _BottomNavItemState extends State<BottomNavItem> {
  // int _pageIndex = 0;
  // final List<Widget> myPages = [
  //   HomeScreen(),
  //   DetailsScreen(),
  //   Akun(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: myPages.elementAt(_pageIndex),
      bottomNavigationBar: CurvedNavigationBar(
        // backgroundColor: Colors.white,
        // color: Colors.deepPurple.shade200,
        // animationDuration: Duration(milliseconds: 300),
        // onTap: (int newIndex) {
        //   setState(() {
        //     _pageIndex = newIndex;
        //   });
        // },
        items: [
          Icon(
            Icons.home,
            color: Color.fromARGB(255, 86, 45, 112),
          ),
          Icon(
            Icons.favorite,
            color: Color.fromARGB(255, 86, 45, 112),
          ),
          Icon(
            Icons.person, 
            color: Color.fromARGB(255, 86, 45, 112),
          ),
        ],
      ),
    );
  }
}

class Akun extends StatelessWidget {
  const Akun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 83, 70, 113),
        title: Text('Pengaturan Akun'),
      ),
    );
  }
}