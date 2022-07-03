import 'package:flutter/material.dart';

import '../../general_exports.dart';

class MyTextField extends StatelessWidget {
  String? hintText;
  TextEditingController? controller;
  String? path;
  String? pathSuffixIcon;
  Color? colorContent;
  bool? obscureText;

  MyTextField({
    this.hintText,
    this.controller,
    this.path,
    this.pathSuffixIcon,
    this.obscureText,
    this.colorContent,
  });

  @override
  Widget build(BuildContext context) {
    return CommonTextInput(
      textEditingController: controller,
      style: CommonTextInputModel(
        hint: hintText,
        hintColor: colorContent,
        fontSize: fontH5,
        borderWidth: 0,
        radius: 8,
        obscureText: obscureText ?? false,
        cursorColor: AppColors.primary,
        prefixIcon: CommonIcon(
          path: path,
          iconDataSize: 18.0,
          color: colorContent,
          containerStyle: CommonContainerModel(
            marginHorizontal: 0.053,
            width: 0.048,
          ),
        ),
        suffixIcon: CommonIcon(
          path: pathSuffixIcon,
          color: AppColors.red,
          iconDataSize: 18.0,
          containerStyle: CommonContainerModel(
              marginHorizontal: 0.053,
              width: 0.048
          ),
        ) ,
      ),
      containerStyle: CommonContainerModel(
        height: 0.064,
        borderColor: AppColors.grey,
        borderRadius: 0.025,
        backgroundColor: AppColors.grey,
      ),
      onChanged: () {},
      onTap: () {},
    );
  }
}