import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  TextEditingController? controller;
  CustomTextField({super.key, this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ));
  }
}
