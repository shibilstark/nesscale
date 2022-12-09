import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class AssetLottieView extends StatelessWidget {
  AssetLottieView({
    Key? key,
    this.width,
    this.height,
    this.maxHeight,
    this.maxWidth,
    required this.path,
  }) : super(key: key);

  double? height;
  double? maxWidth;
  double? maxHeight;
  double? width;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? double.infinity,
      width: width ?? double.infinity,
      constraints: BoxConstraints(
        maxHeight: (maxHeight ?? height) ?? 100,
        maxWidth: (maxWidth ?? width) ?? 100,
      ),
      child: Lottie.asset(path),
    );
  }
}
