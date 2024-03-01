// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../../common/themes/themes.dart';
import '../../../../../../core/utils/enums.dart';

class DcSnackBar extends SnackBar {
  DcSnackBar({
    super.key,
    required String content,
    Color? backgroundColor,
    SnackBarType? snackBarType,
    Duration? duration,
  }) : super(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Flexible(
              //   fit: FlexFit.loose,
              //   child: Text(content,
              //       maxLines: 2,
              //       overflow: TextOverflow.ellipsis,
              //       softWrap: false,
              //       style: AppTextStyle.body4
              //           .copyWith(color: AppColors.neutral.ne01)),
              // ),
              if (snackBarType != null) const SizedBox(width: 8.0),
              if (snackBarType == SnackBarType.success)
                Icon(
                  Icons.check_circle_rounded,
                  color: AppColors.neutral.ne01,
                  size: 18.0,
                ),
              if (snackBarType == SnackBarType.warning)
                Icon(
                  Icons.warning,
                  color: AppColors.neutral.ne01,
                  size: 18.0,
                ),
              if (snackBarType == SnackBarType.error)
                Icon(
                  Icons.error,
                  color: AppColors.neutral.ne01,
                  size: 18.0,
                ),
              Text(content)
            ],
          ),
          duration: duration ?? const Duration(seconds: 3),
          backgroundColor: backgroundColor ??
              (snackBarType == SnackBarType.success
                  ? AppColors.primary.pr10
                  : snackBarType == SnackBarType.warning
                      ? AppColors.primary.pr10
                      : snackBarType == SnackBarType.error
                          ? AppColors.primary.pr10
                          : null),
        );
}
