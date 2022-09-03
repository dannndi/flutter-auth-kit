import 'package:auth_ui/core/component/app_text_field.dart';
import 'package:auth_ui/core/route/app_route_name.dart';
import 'package:auth_ui/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColor.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: MediaQuery.of(context).padding.bottom,
          left: 24,
          right: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              width: MediaQuery.of(context).size.width,
              height: 250,
              fit: BoxFit.contain,
              image: const AssetImage("assets/img_register.png"),
            ),
            Text(
              "Register",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                AppTextField(
                  prefix: Icon(Icons.person_outline),
                  hint: "Username",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 24),
                AppTextField(
                  prefix: Icon(Icons.alternate_email_rounded),
                  hint: "Email Address",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 24),
                AppTextField(
                  prefix: Icon(Icons.phone_outlined),
                  hint: "Phone Number",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 24),
                AppTextField(
                  obscureText: true,
                  prefix: Icon(Icons.lock_outline_rounded),
                  suffix: Icon(Icons.remove_red_eye_outlined),
                  hint: "Password",
                  textInputAction: TextInputAction.done,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "By signing up, you're agree to our ",
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "Term & Condition",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: AppColor.primaryColor),
                      ),
                      TextSpan(
                        text: " and ",
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "privacy Policy",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: AppColor.primaryColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 64,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRouteName.otp,
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    child: const Text("Register"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
