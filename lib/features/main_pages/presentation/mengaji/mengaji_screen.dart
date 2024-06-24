import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/common/extensions/extensions.dart';
import 'package:quranku_pintar/core/error/utils/status.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/models/surah.dart';
import 'package:quranku_pintar/features/main_pages/presentation/main_page.dart';

import '../../../../common/themes/themes.dart';

class Mengajiiew extends StatefulWidget {
  const Mengajiiew({super.key});

  @override
  State<Mengajiiew> createState() => _MengajiiewState();
}

class _MengajiiewState extends State<Mengajiiew> {
  panggillsemuasurat() {
    setState(() {
      context.read<MainBloc>().add(const GetAllSurah());
    });
  }

  @override
  void initState(){
    super.initState();
    panggillsemuasurat();
  

  }
  double sizeList = 600;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            // appbar
            Container(
                height: 160,
                width: size.width,
                color: const Color(0xff189474),
                child: Padding(
                  padding: const EdgeInsets.only(top: 80, left: 16, right: 16),
                  child: GestureDetector(
                    onTap: () {
                      panggillsemuasurat();
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Quranku Pintar",
                            style: AppTextStyle.body1
                                .copyWith(color: AppColors.neutral.ne01)
                                .setSemiBold()),
                        Text(
                            "Mari Mengaji sebagai bentuk pengalaman nilai dan norma dalam berketuhanan !",
                            style: AppTextStyle.body3
                                .copyWith(color: AppColors.neutral.ne01)),
                      ],
                    ),
                  ),
                )),
            BlocBuilder<MainBloc, MainState>(
              builder: (context, state) {
                List<Surat> surat = state.surat;
                log('lenght of srt ${surat.length}');

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
                        itemCount: surat.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              // log(surat[index].nomor.toString());
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MainPage(nomor: surat[index].nomor!),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Container(
                                height: 80,
                                width: size.width,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 24, 197, 154),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff189474),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Text(
                                        surat[index].nomor.toString(),
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: SizedBox(
                                        width: size.width * 0.60,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              surat[index].namaLatin.toString(),
                                              style: AppTextStyle.body2
                                                  .setBold()
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                            Text(
                                              surat[index].arti.toString(),
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
