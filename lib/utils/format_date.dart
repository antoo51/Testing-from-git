import 'package:intl/intl.dart';

class FormatDate {
  static String format(String dateStr) {
    if (dateStr == '') {
      return '-';
    }
    try {
      final inputFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSS'Z'");
      final outputFormat = DateFormat("MMM dd, yyyy");

      final parsedDate = inputFormat.parse(dateStr);
      final formattedDate = outputFormat.format(parsedDate);

      // --- like Oct 10, 2023
      return formattedDate;
    } catch (e) {
      return dateStr;
    }
  }

  static String formatDateTime(String dateStr) {
    try {
      final inputFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSS'Z'");
      final outputFormat = DateFormat("MMMM dd, yyyy hh:mm a");

      final parsedDate = inputFormat.parse(dateStr);
      final formattedDateTime = outputFormat.format(parsedDate);

      // --- like August 23, 2023 02:00 PM
      return formattedDateTime;
    } catch (e) {
      return dateStr;
    }
  }

  static String formatDateTimeSortMonth(String dateStr) {
    try {
      final inputFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSS'Z'");
      final outputFormat = DateFormat("MMM dd, yyyy hh:mm a");

      final parsedDate = inputFormat.parse(dateStr);
      final formattedDateTime = outputFormat.format(parsedDate);

      // --- like Aug 23, 2023 02:00 PM
      return formattedDateTime;
    } catch (e) {
      return dateStr;
    }
  }
}
