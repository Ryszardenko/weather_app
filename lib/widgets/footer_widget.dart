import 'package:flutter/material.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/presentation/text_style.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: const Text(
        Strings.copyright,
        style: CustomTextStyle.brushScriptBold20,
        textAlign: TextAlign.center,
      ),
    );
  }
}
