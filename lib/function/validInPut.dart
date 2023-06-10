import 'package:get/get.dart';

// التحقق من قيود الحقول
validInPut(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "الإسم غير صالح";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "البريد غير صالح";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "الرقم غير صالح";
    }
  }
  if (val.isEmpty) {
    return "لا يمكن ان يكون الحقل فارغ";
  }
  if (val.length < min) {
    return " لا يمكن ان تكون اكثر من محارف $min";
  }
  if (val.length > max) {
    return " لا يمكن ان تكون اكثر من محارف $max";
  }
}
