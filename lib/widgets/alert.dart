import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Alert {
  static const _background = Color(0xFFFDDDE6);
  static const _warning = Color(0xFFFFBC8B);
  static const _error = Color(0xFFF28882);
  static const _success = Color(0xFF80CBC4);
  static const _info = Color(0xFF91C9F7);
  static const _title = Color(0xFF8D4A63);
  static const _text = Colors.black87;
  static const _buttontext = Colors.white;

  static void showWarning({
    required BuildContext context,
    required String title,
    required String message,
    VoidCallback? onOk,
  }) {
    //alert warining
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.bottomSlide,
      headerAnimationLoop: false,
      dialogBackgroundColor: _background,
      btnOkColor: _warning,
      titleTextStyle: const TextStyle(
        fontFamily: 'Mali',
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: _title,
      ),
      descTextStyle: const TextStyle(
        fontFamily: 'Kanit',
        fontSize: 16,
        color: _text,
      ),
      title: title,
      desc: message,
      btnOkOnPress: onOk ?? () {},
    ).show();
  }

  //alert success
  static void showSuccess({
    required BuildContext context,
    required String title,
    required String message,
    VoidCallback? onOk,
  }) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.scale,
      headerAnimationLoop: false,
      dialogBackgroundColor: _background,
      btnOkColor: _success,
      titleTextStyle: TextStyle(
        fontFamily: 'Mali',
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: _title,
      ),
      descTextStyle: const TextStyle(
        fontFamily: 'Kanit',
        fontSize: 16,
        color: _text,
      ),
      title: title,
      desc: message,
      btnOkOnPress: onOk ?? () {},
    ).show();
  }

  // Alert แบบ error
  static void showError({
    required BuildContext context,
    required String title,
    required String message,
    VoidCallback? onOk,
  }) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.leftSlide,
      headerAnimationLoop: false,
      dialogBackgroundColor: _background,
      btnOkColor: _error,
      titleTextStyle: const TextStyle(
        fontFamily: 'Mali',
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: _title,
      ),
      descTextStyle: const TextStyle(
        fontFamily: 'Kanit',
        fontSize: 16,
        color: _text,
      ),
      title: title,
      desc: message,
      btnOkOnPress: onOk ?? () {},
    ).show();
  }
}
