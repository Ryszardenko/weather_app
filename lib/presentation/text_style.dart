import 'package:flutter/material.dart';
import 'package:weather_app/presentation/color.dart';

class CustomTextStyle {
  ///Regular
  static const TextStyle montserratRegular16 = TextStyle(
      fontFamily: "Montserrat",
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: CustomColor.whiteSmoke);

  ///Medium
  static const TextStyle montserratMedium12 = TextStyle(
      fontFamily: "Montserrat",
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: CustomColor.whiteSmoke);

  static const TextStyle montserratMedium14 = TextStyle(
      fontFamily: "Montserrat",
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: CustomColor.whiteSmoke);

  ///Semi-bold
  static const TextStyle montserratSemiBold18 = TextStyle(
      fontFamily: "Montserrat", fontSize: 18.0, fontWeight: FontWeight.w600);

  /// Bold
  static const TextStyle montserratBold18 = TextStyle(
      fontFamily: "Montserrat",
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      color: CustomColor.whiteSmoke);
}
