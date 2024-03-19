import 'package:intl/intl.dart';

extension IntegerExt on double {
  String get currencyFormatRp => NumberFormat.currency(
        locale: 'id',
        symbol: 'Rp.',
        decimalDigits: 0,
      ).format(this);
}
