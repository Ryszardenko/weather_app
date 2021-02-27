import 'package:intl/intl.dart';

extension StringExtensions on String {
  String to24hTime() {
    try{
      final parsedDate = DateTime.parse(this);
      return DateFormat('H:mm').format(parsedDate);
    } on Exception catch (e) {
      print(e);
      return '';
    }
  }
}