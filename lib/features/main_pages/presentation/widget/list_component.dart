import 'package:flutter/material.dart';
import 'package:quranku_pintar/common/extensions/extensions.dart';
import 'package:quranku_pintar/common/themes/themes.dart';

class MainComponent extends StatefulWidget {
  MainComponent({
    super.key,
    required this.size,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.urutan,
    bool? isMateri,
  });

  final Size size;
  final String title;
  final String subtitle;
  final bool icon;
  final String urutan;
  bool? isMateri;

  @override
  State<MainComponent> createState() => _MainComponentState();
}

class _MainComponentState extends State<MainComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.isMateri == false ? 70 : 130,
      width: widget.size.width,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: AppColors.neutral.ne03,
          spreadRadius: 0.2,
          blurRadius: 2,
          offset: const Offset(0, 0.1),
        ),
      ], color: AppColors.neutral.ne01, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Container(
              alignment: Alignment.center,
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: AppColors.bg.bg01.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(8)),
              child: widget.icon == true
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          if (widget.title == 'Level Intermediate')
                            Center(
                              child: Image.asset(
                                'assets/images/book3.png',
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                          if (widget.title == 'Level Beginner')
                            Center(
                              child: Image.asset(
                                'assets/images/book2.png',
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                          if (widget.title == 'Level Advanced')
                            Center(
                              child: Image.asset(
                                'assets/images/book1.png',
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                        ],
                      ),
                    )
                  : Text(
                      widget.urutan,
                      style: AppTextStyle.body3
                          .copyWith(color: AppColors.neutral.ne01),
                    )),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              width: widget.size.width * 0.60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top:16),
                    child: Text(widget.title,
                        style: AppTextStyle.body2
                            .setSemiBold()
                            .copyWith(fontStyle: FontStyle.italic)),
                  ),
                  Text(widget.subtitle, style: AppTextStyle.body3.setRegular()),
                  if (widget.icon == true)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:12),
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: AppColors.bg.bg01.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text('${widget.urutan.toString()} Materi pembelajaran',
                              style: AppTextStyle.body3.setRegular())),
                    ),
                ],
              ),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColors.bg.bg01,
          )
        ],
      ),
    );
  }
}
