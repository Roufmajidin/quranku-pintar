import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:quranku_pintar/common/extensions/extensions.dart';
import 'package:quranku_pintar/common/themes/themes.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}



class _DashboardPageState extends State<DashboardPage> {
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 60, left: 16, right: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quranku Pintar",
                    style: AppTextStyle.body1
                        .setSemiBold()
                        .copyWith(color: Colors.black),
                  ),
                  Container(
                    child: const Icon(
                      Icons.question_mark_sharp,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(8)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                alignment: Alignment.center,
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12))),
                child: const Text("Sliders"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Main Menu",
                style: AppTextStyle.body2
                    .setSemiBold()
                    .copyWith(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MainWidget(),
                    MainWidget(),
                    MainWidget(),
                    MainWidget(),
                  ],
                ),
              ),
            )
             , Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Text(
                "Apa Ya",
                style: AppTextStyle.body2
                    .setSemiBold()
                    .copyWith(color: Colors.black),
              ),
              
            ),
              Padding(
              padding: const EdgeInsets.only(left:16, right: 16),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    // MainWidget(),
                    // MainWidget(),
                 ExtraMenu(),
                 ExtraMenu(),
                 ExtraMenu(),
                 ExtraMenu(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(12))),
    );
  }
}

class ExtraMenu extends StatelessWidget {
  const ExtraMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:16, right:16, bottom: 8 ),
      child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(12))),
    );
  }
  
}
