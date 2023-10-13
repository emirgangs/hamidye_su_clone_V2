// ignore_for_file: file_names
import 'package:bloc_try_example_17_09_2023/utility/colors.dart';
import 'package:flutter/material.dart';
import '../core/login_screen-widgets/googleButton.dart';
import '../core/login_screen-widgets/ibblogo_widget.dart';
import '../core/login_screen-widgets/loginText_widget.dart';
import '../core/login_screen-widgets/logo_widget.dart';
import '../core/login_screen-widgets/orText.dart';
import '../core/login_screen-widgets/phoneANDapple.dart';

class LoginscreenWidget extends StatelessWidget {
  const LoginscreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: ColorItems().transpar),
      body: Column(
        children: [
          Expanded(flex: 2, child: ibblogoWidget(context)),
          Expanded(flex: 2, child: logoWidget(context)),
          Expanded(
              flex: 6,
              child: Column(
                children: [
                  loginTextWidget(context),
                  loginscreenWidgetsSpace(context),
                  googleButtonWidget(context),
                  loginscreenWidgetsSpace(context),
                  orText(context),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      phoneButton(context),
                      loginscreenWidgetsSpace2(context),
                      appleButton(context),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }

  SizedBox loginscreenWidgetsSpace2(BuildContext context) =>
      SizedBox(width: MediaQuery.sizeOf(context).width * 0.07);

  SizedBox loginscreenWidgetsSpace(BuildContext context) =>
      SizedBox(height: MediaQuery.sizeOf(context).height * 0.04);
}

/* 
 context.read<CatsCubit>().getCats();
 */
