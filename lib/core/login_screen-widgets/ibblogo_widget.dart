import 'package:flutter/material.dart';

import '../../const/texts.dart';

Column ibblogoWidget(BuildContext context) {
  return Column(
    children: [
      loginscreenWidgetsSpace(context),
      Image.asset(
        ibbLogo,
        width: MediaQuery.sizeOf(context).width * 0.2,
      )
    ],
  );
}

SizedBox loginscreenWidgetsSpace(BuildContext context) =>
    SizedBox(height: MediaQuery.sizeOf(context).height * 0.04);
