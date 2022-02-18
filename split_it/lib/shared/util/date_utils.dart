import 'package:intl/intl.dart';

class DateUtils {
  static formatDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }
}