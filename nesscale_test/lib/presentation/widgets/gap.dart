import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Gap extends StatelessWidget {
  const Gap({super.key, this.H = 0, this.W = 0});
  final double H;
  final double W;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: W,
      height: H,
    );
  }
}
