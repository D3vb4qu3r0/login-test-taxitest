import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miapp/src/common_widgets/fade_in_animation/animation_desing.dart';
import 'package:miapp/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:miapp/src/constants/color.dart';
import 'package:miapp/src/constants/image_strings.dart';
import 'package:miapp/src/constants/sizes.dart';
import 'package:miapp/src/constants/text_string.dart';
import 'package:miapp/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

import '../welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      // Para que no tome la barra de notificacioes
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 2000,
            animate: TAnimatePosition(
              topAfter: 80,
              topBefore: 80,
              leftBefore: -80,
              leftAfter: tDefaultSize,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tAppName,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  tAppTagLine,
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animate: TAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 100,
            ),
            child: const Image(image: AssetImage(tSplashImage)),
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animate: TAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 100,
              rightBefore: tDefaultSize,
              rightAfter: tDefaultSize,
            ),
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
