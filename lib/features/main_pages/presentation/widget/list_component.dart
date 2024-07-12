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
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          Container(
            height: widget.isMateri == false ? 80 : 120,
            width: widget.size.width,
            decoration: BoxDecoration(
                color: AppColors.bg.bg01,
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8)),
                  child: widget.icon == true ?  const Icon(Icons.lock, color: Colors.white,) : Text(widget.urutan, style: AppTextStyle.body3.copyWith(color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: widget.size.width * 0.60,
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      children: [
                        Text(
                         widget.title,
                          style: AppTextStyle.body2
                              .setBold()
                              .copyWith(color: Colors.white),
                        ),
                         Text(
                          widget.subtitle,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        Image.asset(
              'assets/images/fly.png',
              fit: BoxFit.contain,
              width: widget.size.width,
              color: Colors.white,
            )
        ],
      ),
    );
  }
}
