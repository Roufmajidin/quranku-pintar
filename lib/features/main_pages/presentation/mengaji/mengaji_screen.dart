import 'package:flutter/material.dart';
import 'package:quranku_pintar/common/extensions/extensions.dart';

import '../../../../common/themes/themes.dart';

class Mengajiiew extends StatefulWidget {
  const Mengajiiew({super.key});

  @override
  State<Mengajiiew> createState() => _MengajiiewState();
}

class _MengajiiewState extends State<Mengajiiew> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(children: [
              // appbar
              Container(
                  height: 160,
                  width: size.width,
                  color: const Color(0xff189474),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 80, left: 16, right: 16),
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
                  )),
              SizedBox(
                  height: 600,
                  child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Padding(
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
                                        index.toString(),
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
                                              "Al-Fatihah",
                                              style: AppTextStyle.body2
                                                  .setBold()
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                            const Text(
                                              "Deskripsi dari surat blabala blabala blabala",
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
                            );
                          }))),
            ])));
  }
}
