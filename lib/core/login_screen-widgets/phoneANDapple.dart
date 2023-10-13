// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../../const/texts.dart';
import '../../utility/colors.dart';
import '../../utility/edgeInsets.dart';

SizedBox phoneButton(BuildContext context) {
  return SizedBox(
    width: MediaQuery.sizeOf(context).width * 0.15,
    height: MediaQuery.sizeOf(context).height * 0.09,
    child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorItems().transpar,
            shape: RoundedRectangleBorder(borderRadius: phoneAndAppleCircular)),
        child: Image.asset(phoneLogo)),
  );
}

SizedBox appleButton(BuildContext context) {
  return SizedBox(
    width: MediaQuery.sizeOf(context).width * 0.15,
    height: MediaQuery.sizeOf(context).height * 0.09,
    child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorItems().transpar,
            shape: RoundedRectangleBorder(borderRadius: phoneAndAppleCircular)),
        child: Image.asset(appleLogo)),
  );
}
