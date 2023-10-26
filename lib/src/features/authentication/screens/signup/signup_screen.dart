import 'package:flutter/material.dart';
import 'package:miapp/src/constants/image_strings.dart';
import 'package:miapp/src/constants/sizes.dart';
import 'package:miapp/src/constants/text_string.dart';
import 'package:miapp/src/features/authentication/screens/signup/widgets/singup_footer_widget.dart';
import 'package:miapp/src/features/authentication/screens/signup/widgets/singup_form_widget.dart';

import '../../../../common_widgets/forms/form_header_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // -- Section-1 --
                FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                // -- End section-1 --
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
