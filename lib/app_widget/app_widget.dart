import 'package:country/application/application_data.dart';
import 'package:country/presentation/home/home_page.dart';
import 'package:country/presentation/login/login_page.dart';
import 'package:country/presentation/otp/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialCustomBinding(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      getPages: [
        GetPage(
          name: '/login',
          page: () => LoginPage(),
        ),
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/otp',
          page: () =>  OtpPage(),
        ),
      ],
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.grey)),
    );
  }
}

class InitialCustomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationDataController>(() => ApplicationDataController());
  }
}
