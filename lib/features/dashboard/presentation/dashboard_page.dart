import 'dart:async';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:quranku_pintar/common/extensions/extensions.dart';
import 'package:quranku_pintar/common/themes/themes.dart';
import 'package:quranku_pintar/features/main_pages/presentation/materi_belajar/mb_page.dart';
import 'package:quranku_pintar/features/main_pages/presentation/mengaji/mengaji_page.dart';
import 'package:quranku_pintar/gen/assets.gen.dart';
// import 'gen/assets.gen.dart';
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;
  late Timer timer;
  List<String> imageP = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
  ];
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % imageP.length;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral.ne02,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(color: AppColors.bg.bg01),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 80, left: 16, right: 16, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Quranku Pintar",
                        style: AppTextStyle.body1
                            .setMedium()
                            .copyWith(color: AppColors.neutral.ne01)),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.neutral.ne01,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Icon(Icons.question_mark_sharp,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: AnimatedSwitcher(
                    reverseDuration: const Duration(milliseconds: 0),
                    switchInCurve: Curves.bounceOut,
                    transitionBuilder: (child, animation) {
                      final offsetAnimation = Tween<Offset>(
                        begin: const Offset(1.0, 0.0),
                        end: Offset.zero,
                      ).animate(animation);
                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                    duration: const Duration(seconds: 3),
                    child:
                        // Image.asset(imageP[currentIndex], key: ValueKey<int>(currentIndex),)
                        ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(imageP[currentIndex],
                          height: 200,
                          width: MediaQuery.of(context).size.width),
                    ))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Main Menu",
                style: AppTextStyle.body2
                    .setSemiBold()
                    .copyWith(color: AppColors.neutral.ne09),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    MainWidget(
                        icon: Icons.bookmark_add_rounded,
                        judul: 'Mengaji',
                        subtitle: 'Mengaji Harian',
                        ontap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MengajiPage()))),
                    MainWidget(
                        icon: Icons.mark_chat_read,
                        judul: 'Belajar',
                        subtitle: 'Belajar Mengaji',
                        ontap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MbPage()))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Text(
                "Apa Ya",
                style: AppTextStyle.body2
                    .setSemiBold()
                    .copyWith(color: AppColors.neutral.ne09),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Stack(
                children: [
                  Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.bg.bg01,
                          borderRadius: BorderRadius.circular(12))),
                  Image.asset(
                    'assets/images/fly.png',
                    fit: BoxFit.contain,
                    width: MediaQuery.of(context).size.width,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MainWidget extends StatefulWidget {
  String subtitle;
  IconData icon;
  String judul;

  final Function ontap;

  MainWidget({
    super.key,
    required this.icon,
    required this.judul,
    required this.subtitle,
    required this.ontap,
  });

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          widget.ontap();
        },
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                  color: AppColors.bg.bg01,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          widget.icon,
                          color: Colors.white.withOpacity(0.3),
                          size: 50,
                        )),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(
                          widget.judul,
                          style: AppTextStyle.body2
                              .setMedium()
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        widget.subtitle,
                        style: AppTextStyle.body3
                            .setMedium()
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/images/fly.png',
              fit: BoxFit.contain,
              width: 200,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

// class ExtraMenu extends StatelessWidget {
//   const ExtraMenu({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
