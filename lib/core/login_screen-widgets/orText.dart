// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../const/texts.dart';

Text orText(BuildContext context) {
  return Text(
    orTextSt,
    style: Theme.of(context)
        .textTheme
        .headlineSmall
        ?.copyWith(fontWeight: FontWeight.bold),
  );
}
