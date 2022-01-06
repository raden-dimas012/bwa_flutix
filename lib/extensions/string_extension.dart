part of 'extensions.dart';

extension StringExtension on String {
  bool isDigit(int index) =>
      codeUnitAt(index) >= 48 && codeUnitAt(index) <= 57;
}