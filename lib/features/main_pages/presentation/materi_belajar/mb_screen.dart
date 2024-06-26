import 'package:flutter/material.dart';
import 'package:quranku_pintar/common/extensions/extensions.dart';
import 'package:quranku_pintar/common/themes/themes.dart';

class MbView extends StatefulWidget {
  const MbView({super.key});

  @override
  State<MbView> createState() => _MbViewState();
}

class _MbViewState extends State<MbView> {
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

              // content
              SizedBox(
                  height: sizeList,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: ListView.builder(
                      // clipBehavior: Clip.antiAlias,
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // log(surat[index].nomor.toString());
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         MainPage(nomor: surat[index].nomor!),
                            //   ),
                            // );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Container(
                              height: 80,
                              width: size.width,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 24, 197, 154),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff189474),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: const Icon(Icons.lock, color: Colors.white,)
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
                                            "Tahap Pertama",
                                            style: AppTextStyle.body2
                                                .setBold()
                                                .copyWith(color: Colors.white),
                                          ),
                                          Text(
                                            "Belajar Huruf Hijahiyah",
                                            style: TextStyle(color: Colors.white),
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
                  ))
            ],
          )),
    );
  }
}
