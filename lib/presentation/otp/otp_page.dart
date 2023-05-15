import 'package:country/application/application_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpPage extends GetView<ApplicationDataController> {
  final controller = Get.find<ApplicationDataController>();
   OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: OtpPinField(
        onSubmit: (text) {},
        onChange: (text) {},
      )
          // GetBuilder<ApplicationDataController>(
          //     id: "otppage",
          //     init: ApplicationDataController(),
          //     builder: (c) {
          //       return Text(c.userName);
          //     }),
          ),
    );
  }
}
