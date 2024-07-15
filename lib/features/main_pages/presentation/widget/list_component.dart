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
      decoration: BoxDecoration(

         boxShadow: [

          BoxShadow(
            color: AppColors.neutral.ne03, 
            spreadRadius: 0.2,
            blurRadius: 2, 
            offset: const Offset(0, 0.1),
          ),
        ],
          color: AppColors.neutral.ne01,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: AppColors.bg.bg01.withOpacity(0.8),
                borderRadius: BorderRadius.circular(8)),
            child: widget.icon == true ?  const Icon(Icons.book_outlined, color: Colors.white,) : Text(widget.urutan, style: AppTextStyle.body3.copyWith(color: AppColors.neutral.ne01),),
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
                        .setSemiBold().copyWith(fontStyle: FontStyle.italic)
                        
                  ),
                   Text(
                    widget.subtitle,
                  style: AppTextStyle.body3
                        .setRegular()
                        
                  ),
                ],
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: AppColors.bg.bg01,)
        ],
      ),
    );
  }
}
