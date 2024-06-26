import 'package:flutter/material.dart';
import 'package:quranku_pintar/common/themes/themes.dart';
import 'package:quranku_pintar/features/dashboard/presentation/dashboard_page.dart';
import 'package:quranku_pintar/features/main_pages/presentation/main_page.dart';
import 'package:quranku_pintar/features/main_pages/presentation/materi_belajar/mb_page.dart';
import 'package:quranku_pintar/features/main_pages/presentation/mengaji/mengaji_page.dart';
import 'package:quranku_pintar/gen/assets.gen.dart';

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
            // ignore: deprecated_member_use_from_same_package
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
            label: 'Kuis',
            selectedIcon:Icon(Icons.book_rounded, color: Colors.green,)
          ),
           NavigationDestination(
            icon: Icon(Icons.book_outlined),
            label: 'Tentang Kami',
            // ignore: deprecated_member_use_from_same_package
            selectedIcon:Icon(Icons.info_outline, color: Colors.green,)
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
        // ignore: prefer_const_constructors
        // DashboardPage(),
        // const UjianPage(),
        // const TranskipNilaiPage(),
       const DashboardPage(),
       const MengajiPage(),
       const MengajiPage(),
        // MainPage(),
        // MainPage(),
       const MbPage(),
      ][currentPageIndex],
    );

  
}
}