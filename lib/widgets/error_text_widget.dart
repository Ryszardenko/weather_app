import 'package:flutter/cupertino.dart';
import 'package:weather_app/presentation/text_style.dart';

class ErrorTextWidget extends StatelessWidget {
  const ErrorTextWidget(this._message, {Key key}) : super(key: key);

  final String _message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        _message,
        style: CustomTextStyle.montserratBold20red,
        textAlign: TextAlign.center,
      ),
    );
  }
}
