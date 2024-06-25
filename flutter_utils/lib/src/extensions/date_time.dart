import 'package:flutter/material.dart';

extension DateExtension on DateTime {
  DateTime dateWithoutSecond() {
    return DateTime(year, month, day, hour, minute);
  }

  DateTime dateWithoutTime() {
    return DateTime(year, month, day);
  }

  DateTime beginOfDay() {
    return DateTime(year, month, day);
  }

  DateTime endOfDay() {
    return DateTime(year, month, day, 23, 59, 59);
  }

  DateTime dateWithoutMinute() {
    return DateTime(year, month, day, hour);
  }

  DateTime dateWithoutDay() {
    return DateTime(year, month);
  }

  bool isBetween(DateTime start, DateTime end) {
    final after = isAfter(start);
    final before = isBefore(end.add(const Duration(seconds: 1)));
    return after && before;
  }

  bool isToday() {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  bool isTomorrow() {
    final tmp = subtract(const Duration(days: 1));
    return tmp.isToday();
  }

  bool isYesterday() {
    final tmp = add(const Duration(days: 1));
    return tmp.isToday();
  }

  int get daysInMonth {
    return DateTime(year, month + 1, 1)
        .difference(DateTime(year, month, 1))
        .inDays;
  }

  DateTime getStartOfWeek() {
    final difference = weekday - DateTime.monday;
    final startOfWeek = subtract(Duration(days: difference));
    return startOfWeek;
  }

  DateTime getEndOfWeek() {
    final difference = DateTime.sunday - weekday;
    final endOfWeek = add(Duration(days: difference));
    return endOfWeek;
  }
}

extension TimeOfDayExt on TimeOfDay {
  String get formatted {
    String addLeadingZeroIfNeeded(int value) {
      if (value < 10) {
        return '0$value';
      }
      return value.toString();
    }

    final String hourLabel = addLeadingZeroIfNeeded(hour);
    final String minuteLabel = addLeadingZeroIfNeeded(minute);

    return '$hourLabel:$minuteLabel';
  }

  bool isAfter(TimeOfDay obj) {
    if (hour < obj.hour) return true;
    if (hour == obj.hour && minute <= obj.minute) return true;
    return false;
  }

  bool isBefore(TimeOfDay obj) {
    if (hour > obj.hour) return true;
    if (hour == obj.hour && minute >= obj.minute) return true;
    return false;
  }
}
