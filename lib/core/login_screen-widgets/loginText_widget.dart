// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../const/texts.dart';
import '../../utility/colors.dart';

Text loginTextWidget(BuildContext context) {
  return Text(
    loginText,
    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        color: ColorItems().loginTextBlue, fontWeight: FontWeight.bold),
  );
}
