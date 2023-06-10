import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mycar/auth/login.dart';
import 'package:mycar/home/homescreen.dart';

abstract class SignUpController extends GetxController {
  signup();
  goToLogIn();
}

class SignUoControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  late TextEditingController name;
  late TextEditingController phone;
  late TextEditingController password;

  @override
  signup() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.to(HomeScreen());
    } else {
      print("Not Valid");
    }
  }

  @override
  goToLogIn() {
    Get.to(LogIn());
  }

  @override
  void onInit() {
    name = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
