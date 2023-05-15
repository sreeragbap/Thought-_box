import 'dart:developer';

import 'package:country/service/user_services.dart';
import 'package:country/src/generated/user/user.pbgrpc.dart';
import 'package:get/get.dart';

class ApplicationDataController extends GetxController {
  UserService userService = UserService();
  String userName = '';
  static ApplicationDataController get find => Get.find();

  LoginResponsePayload? loginResponsePayload;
  getLoginResponse({required String userName, required String password}) async {
    loginResponsePayload =
        await userService.login(password: password, userName: userName);
    if (loginResponsePayload != null) {
      userName = loginResponsePayload!.userPayload.username;
    }
    log('$loginResponsePayload');
    update();
  }

  loginWithOtp({required String id, required String otp}) async {
    var result = await userService.loginOTP(id: id, otp: otp);
  }

  logOut({required String lastToken}) async {
    var result = await userService.logOut(token: lastToken);
  }
}
