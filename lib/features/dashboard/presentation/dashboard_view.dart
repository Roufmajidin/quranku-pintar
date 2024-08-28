import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/common/extensions/extensions.dart';
import 'package:quranku_pintar/common/themes/themes.dart';
import 'package:quranku_pintar/core/error/utils/status.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/models/materi.dart';
import 'package:quranku_pintar/features/main_pages/presentation/materi_belajar/detail/detail_page.dart';
import 'package:quranku_pintar/features/main_pages/presentation/materi_belajar/mb_page.dart';
import 'package:quranku_pintar/features/main_pages/presentation/mengaji/mengaji_page.dart';

// import 'gen/assets.gen.dart';
class DashboarView extends StatefulWidget {
  const DashboarView({super.key});

  @override
  State<DashboarView> createState() => _DashboarViewState();
}

class _DashboarViewState extends State<DashboarView> {
  int currentIndex = 0;
  late Timer timer;
  List<String> imageP = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
  ];
  panggilMateri() {
    setState(() {
      context.read<MainBloc>().add(const GetMateri());
    });
  }

  @override
  void initState() {
    super.initState();
    panggilMateri();

    timer = Timer.periodic(const Duration(seconds: 60), (timer) {
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
              // decoration: BoxDecoration(color: AppColors.bg.bg01),
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                colors: [AppColors.bg.bg01, AppColors.primary.pr04],
                begin: Alignment.centerLeft,
                end: Alignment.topCenter,
              )),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Main Menu",
                    style: AppTextStyle.body2
                        .setMedium()
                        .copyWith(color: AppColors.neutral.ne09),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16,16,16,0),
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
            //  pew
            Padding(
              padding: const EdgeInsets.fromLTRB(16,10,16,16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Belajar",
                    style: AppTextStyle.body2
                        .setMedium()
                        .copyWith(color: AppColors.neutral.ne09),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: BlocBuilder<MainBloc, MainState>(
                  builder: (context, state) {
                    if (state.fetchDataProses == FetchStatus.loading) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: AppColors.bg.bg02.withOpacity(0.8),
                          ),
                        ),
                      );
                    }
                    var groupedData = state.groupedMateri;

                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 240,
                      child: GridView.count(
                        scrollDirection: Axis.horizontal,
                        crossAxisCount: 1, // Satu baris
                        children:
                            List.generate(groupedData.length, (jenisKuisIndex) {
                          String jenisKuisKey =
                              groupedData.keys.elementAt(jenisKuisIndex);
                          Map<String, List<Materi>> kategoriMap =
                              groupedData[jenisKuisKey]!;

                          return Row(
                            children: List.generate(kategoriMap.length,
                                (kategoriIndex) {
                              String kategoriKey =
                                  kategoriMap.keys.elementAt(kategoriIndex);
                              List<Materi> items = kategoriMap[kategoriKey]!;

                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    // print(kategoriIndex)
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                            i: items, k: jenisKuisKey),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      gradient: LinearGradient(
                                        colors: [
                                          AppColors.bg.bg01,
                                          AppColors.primary.pr04
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8),
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                            ),
                                            child: Text(
                                              'Level ${kategoriKey}',
                                              style: AppTextStyle.body2
                                                  .setSemiBold()
                                                  .copyWith(
                                                      color: AppColors.bg.bg01),
                                            ),
                                          ),
                                          Spacer(),
                                          if( kategoriKey == 'Intermediate')
                                          Center(
                                            child: Image.asset(
                                             'assets/images/book3.png',
                                              color:
                                                  Colors.white.withOpacity(0.6),
                                            ),
                                          ),
                                             if( kategoriKey == 'Beginner')
                                          Center(
                                            child: Image.asset(
                                             'assets/images/book2.png',
                                              color:
                                                  Colors.white.withOpacity(0.6),
                                            ),
                                          ),
                                             if( kategoriKey == 'Advanced')
                                          Center(
                                            child: Image.asset(
                                             'assets/images/book1.png',
                                              color:
                                                  Colors.white.withOpacity(0.6),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            items[0].judul.toString(),
                                            style: AppTextStyle.body3
                                                .setRegular()
                                                .copyWith(color: Colors.white),
                                          ),
                                          Text(
                                            '${items.length.toString()} materi',
                                            style: AppTextStyle.body3
                                                .setMedium()
                                                .copyWith(
                                                    color: Color.fromARGB(255, 215, 215, 215)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        }),
                      ),
                    );
                  },
                )),
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
              // decoration: BoxDecoration(
              //     color: AppColors.bg.bg01,
              //     borderRadius: BorderRadius.circular(12)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [AppColors.bg.bg01, AppColors.primary.pr04],
                    begin: Alignment.centerLeft,
                    end: Alignment.topCenter,
                  )),
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
              'assets/images/fly2.png',
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
