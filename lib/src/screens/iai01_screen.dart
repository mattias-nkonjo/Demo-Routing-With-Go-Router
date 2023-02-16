import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:p1_flutter_ai/src/components/sign_button.dart';
import 'package:p1_flutter_ai/src/constants/colors_constants.dart';
import 'package:p1_flutter_ai/src/constants/images_url_constants.dart';
import 'package:p1_flutter_ai/src/constants/strings_constants.dart';
import 'package:p1_flutter_ai/src/routing/const_routes.dart';

class AIA01 extends ConsumerWidget {
  const AIA01({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: ColorPalette.backgroundGradient,
          ),
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
          child: Column(
            children: [
              const Expanded(child: SizedBox.shrink()),
              Image.asset(ImagesUrl.character19),
              const SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.companyName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    Strings.moto,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    Strings.aboutApp,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  signButton(
                    onPress: () => context.goNamed(ConstRoutes.iai02),
                    text: Strings.signUp,
                  ),
                  signButton(
                      onPress: () => context.goNamed(ConstRoutes.iai02),
                      text: Strings.signIn,
                      backGroundColor: ColorPalette.whiteColor,
                      textColor: ColorPalette.blackColor),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
