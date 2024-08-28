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

  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    panggillsemuasurat();
  }

  double padding = 80;
  double isHeight = 180;

  isSearch(bool isSc) {
    if (isSc == true) {
      padding = 40;
      isHeight = 130;
    } else {
      FocusScope.of(context).unfocus(); // Remove focus from TextField

      padding = 80;
      isHeight = 180;
      log('onc');
    }
    setState(() {});
  }

  double sizeList = 600;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.neutral.ne02,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // appbar
            Stack(
              children: [
                Container(
                    height: isHeight,
                    width: size.width,
                    // color: AppColors.bg.bg01,
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                        colors: [AppColors.bg.bg01, AppColors.primary.pr04],
                        begin: Alignment.centerLeft,
                        end: Alignment.topCenter,
                      )),
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: padding, left: 16, right: 16),
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
                    Image.asset(
                    height: 200,
                    'assets/images/fly.png',
                    fit: BoxFit.contain,
                    width: size.width,
                  )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
              child: TextField(
                controller: _controller,
                onTap: () {
                  setState(() {
                    isSearch(true);
                  });
                },
                onTapOutside: (event) {
                  // if(is)
                  setState(() {
                    isSearch(false);
                  });
                },
                onEditingComplete: () {
                  setState(() {
                    isSearch(false);
                  });
                },
                onSubmitted: (event) {
                  setState(() {
                    isSearch(false);
                  });
                },
                // controller: _controller,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 10.0), // Reduce content padding
                  // enabledBorder: InputBorder.,
                  hintText: 'Search...',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _controller.value.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            setState(() {
                              _controller.clear();

                              FocusScope.of(context).unfocus();

                              context.read<MainBloc>().add(const GetAllSurah());
                              context.read<MainBloc>().add(const CariSurat(''));
                            });
                          },
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                        color: AppColors.neutral.ne01,
                        width: 3), // Default border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                        color: AppColors.neutral.ne01,
                        width: 3), // Border color when focused
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: AppColors.neutral.ne08,
                    ),
                  ),
                ),

                onChanged: (String query) {
                  setState(() {
                    print(query);
                    context
                        .read<MainBloc>()
                        .add(CariSurat(_controller.value.text));
                  });
                },
              ),
            ),
            // Padding(
            //   padding:  EdgeInsets.symmetric(vertical:8.0, horizontal:16),
            //   child: Text(
            //     'List Surah',
            //     style: AppTextStyle.body2.setRegular(),
            //   ),
            // ),
            const SizedBox(height: 10,),
            BlocBuilder<MainBloc, MainState>(
              builder: (context, state) {
                if (state.fetchDataProses == FetchStatus.loading) {
                  return Center(
                    child: CircularProgressIndicator(color: AppColors.bg.bg01),
                  );
                } else if (state.fetchDataProses == FetchStatus.failure) {
                  return Center(
                    child: SizedBox(
                      height: size.height * 0.50,
                      child: Center(
                        child: const Text(
                          'Pencarian tidak ditemukan',
                          style: AppTextStyle.body3,
                        ),
                      ),
                    ),
                  );
                }

                List<Surat> surat =
                    state.pencarian.isNotEmpty ? state.pencarian : state.surat;

                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: size.height,
                    child: ListView.builder(

                      
                      padding: EdgeInsets.all(0),
                      itemCount: surat.length,
                      itemBuilder: (context, index) {

                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GestureDetector(
                            onTap: () {
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
                                  'assets/images/fly2.png',
                                  fit: BoxFit.cover,
                                  width: size.width,
                                  height: 80,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
