import 'package:digi_app/utils/consts/images.dart';
import 'package:flutter/material.dart';

class LoadingComponent extends StatelessWidget {
  const LoadingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        gif1,
        height: 200,
        width: 200,
      ),
    );
  }
}
