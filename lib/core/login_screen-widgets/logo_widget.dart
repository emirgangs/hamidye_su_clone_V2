import 'package:flutter/material.dart';

import '../../const/texts.dart';

Column logoWidget(BuildContext context) {
  return Column(
    children: [
      Image.asset(
        logo,
        width: MediaQuery.sizeOf(context).width * 0.4,
      )
    ],
  );
}
