import 'package:auth_ui/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

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
              image: const AssetImage("assets/img_otp.png"),
            ),
            Text(
              "Enter OTP",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "An 4 Digit code has been sent to \n +621234857",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.grey),
            ),
            const SizedBox(),
            SizedBox(
              height: 96,
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 86,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.primarySwatch[50]?.withOpacity(0.5),
                      ),
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextFormField(
                        style: Theme.of(context).textTheme.headlineMedium,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        onChanged: (value) {
                          if (value.isEmpty) {
                            return;
                          }
                          FocusScope.of(context).nextFocus();
                        },
                      ),
                    ),
                    Container(
                      height: 86,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.primarySwatch[50]?.withOpacity(0.5),
                      ),
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextFormField(
                        style: Theme.of(context).textTheme.headlineMedium,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        onChanged: (value) {
                          if (value.isEmpty) {
                            FocusScope.of(context).previousFocus();
                            return;
                          }
                          FocusScope.of(context).nextFocus();
                        },
                      ),
                    ),
                    Container(
                      height: 86,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.primarySwatch[50]?.withOpacity(0.5),
                      ),
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextFormField(
                        style: Theme.of(context).textTheme.headlineMedium,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        onChanged: (value) {
                          if (value.isEmpty) {
                            FocusScope.of(context).previousFocus();
                            return;
                          }
                          FocusScope.of(context).nextFocus();
                        },
                      ),
                    ),
                    Container(
                      height: 86,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.primarySwatch[50]?.withOpacity(0.5),
                      ),
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextFormField(
                        style: Theme.of(context).textTheme.headlineMedium,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        onChanged: (value) {
                          if (value.isEmpty) {
                            FocusScope.of(context).previousFocus();
                            return;
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't receive code ? ",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.grey),
                  ),
                  TextSpan(
                    text: "Send again!",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: AppColor.primaryColor),
                  ),
                ],
              ),
            ),
            const SizedBox(),
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
