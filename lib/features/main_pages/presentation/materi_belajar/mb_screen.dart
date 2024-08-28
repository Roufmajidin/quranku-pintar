import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/common/extensions/extensions.dart';
import 'package:quranku_pintar/common/themes/themes.dart';
import 'package:quranku_pintar/core/error/utils/status.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/models/materi.dart';
import 'package:quranku_pintar/features/main_pages/presentation/materi_belajar/detail/detail_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widget/list_component.dart';

class MbView extends StatefulWidget {
  const   MbView({super.key});

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
  void didChangeDependencies() {
    super.didChangeDependencies();
    getDeviceName();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    panggilMateri();
    didChangeDependencies();
    // getDeviceName();
    setState(() {});
  }

  Future<void> getDeviceName() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    try {
      if (Theme.of(context).platform == 'ios') {
      } else {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        // ignore: use_build_context_synchronously
        //  context.read<MainBloc>().add(PostDevice(androidInfo.model));
        //  context.read<MainBloc>().add(GetMateriPengguna(androidInfo.model));
        print('xxx ${androidInfo.model}');
      }
    } catch (e) {
      print('Gagal mendapatkan informasi perangkat: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.neutral.ne02,
      body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // appbar
              GestureDetector(
                onTap: () {
                  panggilMateri();
                  print('oj');
                },
                child: Stack(
                  // fit: StackFit.passthrough,
                  children: [
                    Container(
                        // height: 200,
                        width: size.width,
                        // color: AppColors.bg.bg01,
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                          colors: [AppColors.bg.bg01, AppColors.primary.pr04],
                          begin: Alignment.centerLeft,
                          end: Alignment.topCenter,
                        )),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 80, left: 16, right: 16, bottom: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Materi Belajar",
                                      style: AppTextStyle.body1
                                          .copyWith(
                                              color: AppColors.neutral.ne01)
                                          .setSemiBold()),
                                  Text(
                                      "Yuk Belajar, dengan mengikuti kegiatan pada menu ini, kamu akan mendapat wawasan mengenai bacaan dalam Mengaji",
                                      style: AppTextStyle.body3.copyWith(
                                          color: AppColors.neutral.ne01)),
                                ],
                              ),
                            ),
                            Image.asset(
                              // isAntiAlias: false,
                              height: 210,
                              'assets/images/fly.png',
                              fit: BoxFit.cover,
                              width: size.width,
                            ),
                          ],
                        )),
                  ],
                ),
              ),

              // content
              BlocBuilder<MainBloc, MainState>(
                builder: (context, state) {
                  if (state.fetchDataProses == FetchStatus.loading) {
                    return SizedBox(
                      height: sizeList,
                      child: Center(
                        child: CircularProgressIndicator(
                          color: AppColors.bg.bg02.withOpacity(0.8),
                        ),
                      ),
                    );
                  }
                  var groupedData = state.groupedMateri;

                  return SizedBox(
                    height: sizeList,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: ListView.builder(
                        shrinkWrap: true,
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

                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        // log(jenisKuisKey.toString());
                                        // var a = getPreferenceIndexes;
                                        // log(items.toString());
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DetailPage(
                                                i: items, k: jenisKuisKey),
                                          ),
                                        );
                                      },
                                      child: MainComponent(
                                        isMateri: true,
                                        size: size,
                                        title: 'Level ${jenisKuisKey}',
                                        subtitle:
                                            items[0].judul.toString(), // Display the titles of the items
                                        icon: true,
                                        urutan: items.length
                                            .toString(), 
                                      ),
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

  Future<List<int>> getPreferenceIndexes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? storedPreferences = prefs.getStringList('groupPreferences');
    return storedPreferences!.map((e) => int.parse(e)).toList();
  }
}
