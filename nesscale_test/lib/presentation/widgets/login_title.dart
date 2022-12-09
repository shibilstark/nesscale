import 'package:flutter/material.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/core/dimensions/dimensions.dart';
import 'package:nesscale_test/core/text/text.dart';

class LoginTitleWidget extends StatelessWidget {
  const LoginTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppText.mainTitle,
          style: TextStyle(
            fontSize: 32,
            fontWeight: AppFontWeight.kBold,
            color: AppColors.darkBlue,
          ),
        ),
        RichText(
          text: const TextSpan(
            text: 'Flutter ',
            style: TextStyle(
              fontWeight: AppFontWeight.kRegular,
              fontSize: 16,
              color: AppColors.black,
            ),
            children: [
              TextSpan(
                text: 'Test',
                style: TextStyle(
                  fontWeight: AppFontWeight.kRegular,
                  fontSize: 16,
                  color: AppColors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
