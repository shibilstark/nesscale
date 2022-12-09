import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nesscale_test/core/assets/images.dart';

class AssetImageView extends StatelessWidget {
  AssetImageView({
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
      child: SvgPicture.asset(path),
    );
  }
}
