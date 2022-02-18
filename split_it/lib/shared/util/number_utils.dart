import 'package:intl/intl.dart';

class NumberUtils {
  static formatCurrency(num value) {
    return NumberFormat('R\$ #,###.00', 'pt_BR').format(value);
  }
}