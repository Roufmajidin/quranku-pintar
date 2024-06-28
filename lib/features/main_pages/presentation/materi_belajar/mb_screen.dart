import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/common/extensions/extensions.dart';
import 'package:quranku_pintar/common/themes/themes.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';

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
      context.read<MainBloc>().add(GetMateri());
    });
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
                onTap: (){
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
                         
                          },
                          child: MainComponent(size: size, title: "Tahap Pertama", subtitle: "Belajar Huruf Hijahiyah",icon: true, urutan: '1',),
                        );
                      },
                    ),
                  ))
            ],
          )),
    );
  }
}

