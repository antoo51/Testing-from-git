import 'package:intl/intl.dart';

class CurrencyFormatter {
  static String format(String price) {
    final numberFormat =
        NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 0);
    final formattedPrice = double.tryParse(price.replaceAll(',', '')) ?? 0.0;
    return numberFormat.format(formattedPrice);
  }
}
