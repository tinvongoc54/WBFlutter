import 'package:intl/intl.dart';

extension IntX on int {
  String formatMoney() {
    final formatter = NumberFormat('#,###,000');
    return formatter.format(this);
  }
}