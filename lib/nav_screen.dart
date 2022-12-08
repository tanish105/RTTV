import 'package:flutter/material.dart';
import 'package:rttv/download_screen.dart';
import 'package:rttv/homepage.dart';
import 'package:rttv/more_screen.dart';
import 'package:rttv/region_screen.dart';
import 'package:rttv/search_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomePage(key: PageStorageKey('homePage'),),
    SearchPage(),
    Region(),
    DownloadScreen(),
    MoreScreen(),
  ];

  final Map<String, IconData> _icons = const {
    'Home': Icons.home,
    'Search': Icons.search,
    'Region' : Icons.view_compact,
    'Downloads': Icons.file_download,
    'More': Icons.menu,
  };

  int _currIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D131F),
      body: _screens[_currIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _icons.map((title, icon) => MapEntry(
            title,
            BottomNavigationBarItem(
              icon: Icon(icon,size: 30.0),
              label: title,
        )))
            .values
            .toList(),
        currentIndex: _currIndex,
        selectedItemColor: Colors.red,
        selectedFontSize: 11.0,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 11.0,
        backgroundColor: Color(0xff0D131F),
        onTap: (index) => setState(() => _currIndex = index),
      ),
    );
  }
}
