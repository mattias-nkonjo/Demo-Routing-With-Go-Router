import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class AIA02 extends ConsumerWidget {
  const AIA02({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: const Text(
          Strings.appName,
          style: TextStyle(color: ColorPalette.blackColor),
        ),
        centerTitle: true,
        gradient: ColorPalette.appbarGradient,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: ColorPalette.backgroundGradient,
          ),
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
          child: const Center(
            child: Text('Go Router'),
          ),
        ),
      ),
    );
  }
}
