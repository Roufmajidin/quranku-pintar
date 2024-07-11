import 'package:flutter/material.dart';
import 'package:quranku_pintar/features/dashboard/presentation/dashboard_page.dart';
import 'package:quranku_pintar/features/main_pages/presentation/materi_belajar/mb_page.dart';
import 'package:quranku_pintar/features/main_pages/presentation/mengaji/mengaji_page.dart';

class Navigation extends StatefulWidget {
  final int? currentPage;

  const Navigation({super.key, this.currentPage});

  @override
  State<Navigation> createState() => _NavigationState();
}
  int currentPageIndex = 0;

class _NavigationState extends State<Navigation> {
   @override
  void initState() {
    super.initState();
    if (widget.currentPage != null) {
      currentPageIndex = 1;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Beranda',
            selectedIcon:Icon(Icons.home, color: Colors.green,)
          ),
          NavigationDestination(
            icon: Icon(Icons.book_outlined),
            label: 'Mengaji',
            selectedIcon:Icon(Icons.book_rounded, color: Colors.green,)
          ),
           
           NavigationDestination(
            icon: Icon(Icons.book_outlined),
            label: 'Belajar',
            selectedIcon:Icon(Icons.book_rounded, color: Colors.green,)
          ),
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
      body: <Widget>[
       
       const DashboardPage(),
       const MengajiPage(),
       const MbPage(),
      ][currentPageIndex],
    );

  
}
}