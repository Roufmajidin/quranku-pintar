import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/common/extensions/extensions.dart';
import 'package:quranku_pintar/common/themes/themes.dart';
import 'package:quranku_pintar/core/error/utils/status.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/models/materi.dart';
import 'package:quranku_pintar/features/main_pages/presentation/materi_belajar/detail/detail_page.dart';

import '../widget/list_component.dart';

class MbView extends StatefulWidget {
  const MbView({super.key});

  @override
  State<MbView> createState() => _MbViewState();
}

class _MbViewState extends State<MbView> {
  double sizeList = 600;
  panggilMateri() {
    setState(() {
      context.read<MainBloc>().add(const GetMateri());
    });
  }

  @override
  void initState() {
    super.initState();
    panggilMateri();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              // appbar
              GestureDetector(
                onTap: () {
                  panggilMateri();
                  print('oj');
                },
                child: Container(
                    height: 180,
                    width: size.width,
                    color: const Color(0xff189474),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 80, left: 16, right: 16, bottom: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Materi Belajar",
                              style: AppTextStyle.body1
                                  .copyWith(color: AppColors.neutral.ne01)
                                  .setSemiBold()),
                          Text(
                              "Yuk Belajar, dengan mengikuti kegiatan pada menu ini, kamu akan !",
                              style: AppTextStyle.body3
                                  .copyWith(color: AppColors.neutral.ne01)),
                        ],
                      ),
                    )),
              ),

              // content
              BlocBuilder<MainBloc, MainState>(
                builder: (context, state) {
                  if (state.fetchDataProses == FetchStatus.loading) {
                    return SizedBox(
                      height: sizeList,
                      child: const Center(
                        child: CircularProgressIndicator(color: Colors.green),
                      ),
                    );
                  }
                 var groupedData =
                      state.groupedMateri;

                  return SizedBox(
                    height: sizeList,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: groupedData.length,
                        itemBuilder: (context, jenisKuisIndex) {
                          String jenisKuisKey =
                              groupedData.keys.elementAt(jenisKuisIndex);
                          Map<String, List<Materi>> kategoriMap =
                              groupedData[jenisKuisKey]!;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: kategoriMap.length,
                                itemBuilder: (context, kategoriIndex) {
                                  String kategoriKey =
                                      kategoriMap.keys.elementAt(kategoriIndex);
                                  List<Materi> items =
                                      kategoriMap[kategoriKey]!;

                                  return GestureDetector(
                                    onTap: () {
                                      log(items.toString());
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              DetailPage(i: items),
                                        ),
                                      );
                                    },
                                    child: MainComponent(
                                      isMateri: true,
                                      size: size,
                                      title: jenisKuisKey,
                                      subtitle:
                                          kategoriKey, // Display the titles of the items
                                      icon: true,
                                      urutan: items.length
                                          .toString(), // Display the count of items
                                    ),
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  );
                },
              )
            ],
          )),
    );
  }
}
