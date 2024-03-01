import 'package:flutter/material.dart';

import '../error/utils/snackBar.dart';
import '../utils/enums.dart';

class ShowSnackBarHelper {
  ShowSnackBarHelper._();

  static void show(
    BuildContext context, {
    required String message,
    Duration? duration,
    SnackBarType? snackBarType,
  }) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      DcSnackBar(
        content: message,
        duration: duration,
        snackBarType: snackBarType,
      ),
    );
  }
}
