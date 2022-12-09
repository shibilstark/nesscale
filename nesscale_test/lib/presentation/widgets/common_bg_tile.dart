import 'package:flutter/cupertino.dart';
import 'package:nesscale_test/core/colors/colors.dart';

class CommonBgTile extends StatelessWidget {
  CommonBgTile({
    Key? key,
    this.bg = AppColors.white,
    this.child,
    this.radius = 10,
  }) : super(key: key);

  final Color bg;
  final double radius;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        padding: EdgeInsets.all(radius),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius), color: bg),
        child: child,
      ),
    );
  }
}
