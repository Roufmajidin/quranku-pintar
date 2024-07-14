import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/common/extensions/extensions.dart';
import 'package:quranku_pintar/core/error/utils/status.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/models/surah.dart';
import 'package:quranku_pintar/features/main_pages/presentation/main_page.dart';
import 'package:quranku_pintar/features/main_pages/presentation/widget/list_component.dart';

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
  void initState() {
    super.initState();
    panggillsemuasurat();
  }

  double sizeList = 600;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.neutral.ne01,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            // appbar
            Container(
                height: 200,
                width: size.width,
                color: AppColors.bg.bg01,
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
                    child: Center(
                      child:
                          CircularProgressIndicator(color: AppColors.bg.bg01),
                    ),
                  );
                }

                return SizedBox(
                    height: sizeList,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.all(0),
                        itemCount: surat.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: GestureDetector(
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
                                child: Stack(
                                  children: [
                                    MainComponent(
                                      size: size,
                                      title: surat[index].namaLatin.toString(),
                                      subtitle: surat[index].arti.toString(),
                                      icon: false,
                                      urutan: surat[index].nomor.toString(),
                                    ),
                                    Image.asset(
                                      'assets/images/fly.png',
                                      fit: BoxFit.cover,
                                      width: size.width,
                                      height: 80,
                                      color: Colors.white,
                                    )
                                  ],
                                )),
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
