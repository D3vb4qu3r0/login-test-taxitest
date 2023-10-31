import 'package:flutter/material.dart';
import 'package:miapp/src/common_widgets/forms/form_header_widget.dart';
import 'package:miapp/src/constants/image_strings.dart';
import 'package:miapp/src/constants/sizes.dart';
import 'package:miapp/src/constants/text_string.dart';
import 'package:miapp/src/features/authentication/screens/login/widgets/login_footer_widget.dart';
import 'widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* -- Section-1 -- */
                FormHeaderWidget(
                    image: tWelcomeScreenImage,
                    title: tLoginTitle,
                    subTitle: tLoginSubTitle,
                ),
                /* -- /.end -- */
                /* -- Section-2 [Form] -- */
                LoginForm(),
                /* -- /.end -- */
                /* -- Section-3 [Sign In whit Google] -- */
                LoginFooterWidget(),
                /* -- /.end -- */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
