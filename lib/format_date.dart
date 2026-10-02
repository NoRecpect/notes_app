import 'package:intl/intl.dart';

String formatDate(String text) {
  DateTime parsedDate = DateTime.parse(text);
  String formattedDate = DateFormat("MMMM d, yyyy").format(parsedDate);

  return formattedDate;
}
