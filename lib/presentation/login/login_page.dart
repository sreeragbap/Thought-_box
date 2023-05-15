import 'package:country/application/application_data.dart';
import 'package:country/core/common_widgets.dart';
import 'package:country/presentation/login/widgets/custom_texfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  final controller = ApplicationDataController.find;
  LoginPage({super.key});

  // clearFields()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 40),
              ),
              kHeight30,
              CustomTextField(
                controller: userName,
                hintText: "user name",
              ),
              kHeight20,
              CustomTextField(
                controller: password,
                hintText: "password",
              ),
              kHeight30,
              MaterialButton(
                onPressed: () async {
                  await controller.getLoginResponse(
                      userName: userName.text.trim(),
                      password: password.text.trim());

                  controller.update();

                  // Get.toNamed("/otp");
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    kWidth10,
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
              ),
              kHeight20,
              GetBuilder<ApplicationDataController>(
                init: controller,
                builder: (ctr) {
                  return Text(ctr.userName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
