import 'package:flutter/material.dart';
import 'package:nesscale_test/core/colors/colors.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    Key? key,
    required this.userNameController,
    required this.passwordController,
  }) : super(key: key);

  final ValueNotifier<TextEditingController> userNameController;
  final ValueNotifier<TextEditingController> passwordController;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: InkWell(
          onTap: () {
            userNameController;
            passwordController;
          },
          child: CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.darkBlue,
            child: Icon(
              Icons.keyboard_arrow_right,
              size: 30,
              color: AppColors.white,
            ),
          )),
    );
  }
}
