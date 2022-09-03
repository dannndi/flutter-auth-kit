import 'package:auth_ui/core/component/app_text_field.dart';
import 'package:auth_ui/core/route/app_route_name.dart';
import 'package:auth_ui/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
              height: 450,
              fit: BoxFit.contain,
              image: const AssetImage("assets/img_reset_password.png"),
            ),
            Text(
              "Reset\nPassword",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                AppTextField(
                  obscureText: true,
                  prefix: Icon(Icons.lock_outline_rounded),
                  hint: "New Password",
                  suffix: Icon(Icons.remove_red_eye_outlined),
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 24),
                AppTextField(
                  obscureText: true,
                  prefix: Icon(Icons.lock_outline_rounded),
                  hint: "Confirm new Password",
                  suffix: Icon(Icons.remove_red_eye_outlined),
                  textInputAction: TextInputAction.done,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 64,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                child: const Text("Submit"),
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
