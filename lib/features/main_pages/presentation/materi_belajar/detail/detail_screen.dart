import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/common/extensions/extensions.dart';
import 'package:quranku_pintar/common/themes/themes.dart';
import 'package:quranku_pintar/core/error/utils/status.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/models/materi.dart';
import 'package:quranku_pintar/features/main_pages/presentation/materi_belajar/detail/detail_page.dart';

import '../../widget/list_component.dart';

class DetailView extends StatefulWidget {
  DetailView({super.key, required this.i});

  @override
  State<DetailView> createState() => _DetailViewState();
  final List<Materi> i;
}

class _DetailViewState extends State<DetailView> {
  @override
  double sizeList = 600;

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // panggilMateri();
                print('length ${widget.i.length}');
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
                        Text("Detail",
                            style: AppTextStyle.body3
                                .copyWith(color: AppColors.neutral.ne01)),
                        Text(widget.i[0].kategori.toString(),
                            style: AppTextStyle.body1
                                .copyWith(color: AppColors.neutral.ne01)
                                .setSemiBold()),
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

                return SizedBox(
                  height: sizeList,
                  child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: ListView.builder(
                        shrinkWrap: true,
                        // physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.i.length,
                        itemBuilder: (context, index) {
                          var d = widget.i[index];
                          var no = index += 1;
                          return GestureDetector(
                              onTap: () {
                                // log(items.toString());
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Container(
                                  // height: 120,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                              255, 24, 197, 154)
                                          .withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: SizedBox(
                                          width: size.width * 0.9,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 50,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                          color: const Color
                                                              .fromARGB(255, 24,
                                                              197, 154),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8)),
                                                      child: Text(
                                                        no.toString(),
                                                        style: AppTextStyle
                                                            .body2
                                                            .setBold()
                                                            .copyWith(
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 16),
                                                      child: Text(
                                                        d.judul.toString(),
                                                        style: AppTextStyle
                                                            .body2
                                                            .setSemiBold()
                                                            .copyWith(
                                                                fontFamily:
                                                                    'Popins',
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Padding(
                                                padding: const EdgeInsets.only(left:8),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      d.materi.toString(),
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontStyle:
                                                              FontStyle.italic),
                                                    ),
                                                    const SizedBox(height: 8),
                                                    Text(
                                                      'Contoh Soal ${d.contoh_soal.toString()}',
                                                      style: AppTextStyle.body2
                                                          .setSemiBold()
                                                          .copyWith(
                                                              fontFamily:
                                                                  'Popins',
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    const SizedBox(height: 8),
                                                    const Text(
                                                      'Latihan : Lafalkan salah satu huruf yang ada pada contoh!',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontStyle:
                                                              FontStyle.italic),
                                                    ),
                                                   Align(
                                                    alignment: Alignment.bottomRight,
                                                     child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width: 50,
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            color: const Color
                                                                .fromARGB(255, 24,
                                                                197, 154),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(8)),
                                                        child: const Icon(Icons.mic, color: Colors.white,)
                                                      ),
                                                   ),
                                                    const SizedBox(height: 8),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                        },
                      )),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
