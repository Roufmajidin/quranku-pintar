import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white54,
      child: const Center(
          child: CircularProgressIndicator.adaptive(
        backgroundColor: Colors.white,
      )),
    );
  }
}
