import 'package:flutter/cupertino.dart';
import 'package:weather_app/presentation/text_style.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget(this._message, {Key key}) : super(key: key);

  final String _message;

  @override
  Widget build(BuildContext context) {
    return Text(
      _message,
      style: CustomTextStyle.montserratBold20red,
    );
  }
}
