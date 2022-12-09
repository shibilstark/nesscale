import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nesscale_test/core/assets/lottie.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/core/dimensions/dimensions.dart';
import 'package:nesscale_test/presentation/widgets/asset_lottie_view.dart';
import 'package:nesscale_test/presentation/widgets/gap.dart';

class ErrorLottieWidget extends StatelessWidget {
  const ErrorLottieWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: AppDimensions.kCommonPadding,
      child: Center(
        child: AssetLottieView(
          path: AppLottieAssets.error,
          width: double.infinity,
          height: size.height / 3,
        ),
      ),
    );
  }
}

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    Key? key,
    required this.message,
    required this.callBack,
  }) : super(key: key);

  final String message;
  final void Function() callBack;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "OOPS!",
          style: TextStyle(
              fontSize: 30,
              fontWeight: AppFontWeight.kBold,
              color: AppColors.black),
        ),
        const Gap(H: 10),
        Text(
          message,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: AppFontWeight.kRegular,
            color: Colors.grey,
          ),
        ),
        const ErrorLottieWidget(),
        const Gap(H: 10),
        TextButton.icon(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
              foregroundColor: MaterialStateProperty.all(AppColors.white),
              backgroundColor: MaterialStateProperty.all(AppColors.darkBlue),
            ),
            onPressed: callBack,
            icon: const Icon(Icons.replay),
            label: const Text("Retry"))
      ],
    );
  }
}
