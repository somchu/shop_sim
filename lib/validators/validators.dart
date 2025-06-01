class Validators {
  static String? validateShopName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'กรุณากรอกชื่อร้าน';
    }

    if (value.trim().length < 3) {
      return 'ชื่อร้านควรมีมากกว่า 3 ตัวอักษร';
    }

    if (!RegExp(r'^[ก-๙a-zA-Z0-9\s]+$').hasMatch(value.trim())) {
      return 'ชื่อร้านต้องไม่ใช่ตัวอักษรพิเศษ';
    }

    return null;
  }
}
