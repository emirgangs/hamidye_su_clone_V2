// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/cats_cubit.dart';
import '../../const/texts.dart';
import '../../utility/colors.dart';

SizedBox googleButtonWidget(BuildContext context) {
  return SizedBox(
    width: MediaQuery.sizeOf(context).width * 0.5,
    height: MediaQuery.sizeOf(context).height * 0.08,
    child: ElevatedButton(
      onPressed: () {
        context.read<CatsCubit>().getCats();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorItems().transpar,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
      child: Image.asset(googleLogo),
    ),
  );
}
