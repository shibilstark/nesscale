import 'package:flutter/material.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/core/dimensions/dimensions.dart';

class InofAndAddWidget extends StatelessWidget {
  const InofAndAddWidget({
    Key? key,
    required this.info,
    required this.onPress,
    required this.label,
  }) : super(key: key);

  final String info;
  final Function() onPress;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          info,
          style: TextStyle(
            color: AppColors.black,
            fontWeight: AppFontWeight.kSemiBold,
            fontSize: 14,
          ),
        ),
        TextButton.icon(
            onPressed: onPress,
            icon: Icon(
              Icons.add,
              color: AppColors.black,
              size: 15,
            ),
            label: Text(
              label,
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 12,
                  fontWeight: AppFontWeight.kMedium),
            ))
      ],
    );
  }
}
