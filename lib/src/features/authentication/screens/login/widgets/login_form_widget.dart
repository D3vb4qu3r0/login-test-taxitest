import 'package:flutter/material.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';
import '../../forget_password/forget_password_options/forget_password_model_buttom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // -- Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: tEmail,
                hintText: tEmail,
                border: OutlineInputBorder(),
              ),
            ),
            // -- Password
            const SizedBox(height: tFormHeight),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            // -- FORGET PASSWORD
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: const Text(
                  tForgetPassword,
                  style: TextStyle(color: Colors.purple),
                ),
              ),
            ),
            // -- LOGIN BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(tLogin.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
