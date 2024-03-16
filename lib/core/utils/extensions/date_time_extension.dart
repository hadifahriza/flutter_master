part of 'extensions.dart';

extension DateTimeExtension on DateTime {
  DateTime updatedTimeToFirst() => DateTime(year, month, day, 0, 0, 0);
  DateTime updatedTimeToLast() => DateTime(year, month, day, 23, 59, 59);
}
