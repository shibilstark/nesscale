import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/presentation/widgets/gap.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBase extends StatelessWidget {
  const ShimmerBase(
      {super.key,
      // this.child,
      this.height = 0,
      this.width = 0,
      this.color = AppColors.white,
      this.radius = 10});

  final double height;
  final double width;
  final Color color;
  final double radius;
  // Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(radius)),
        child: Shimmer.fromColors(
          baseColor: AppColors.grey.withOpacity(0.5),
          highlightColor: AppColors.white,
          child: Container(
            height: height,
            width: width,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}

// class CommonShimmerTile extends StatelessWidget {
//   const CommonShimmerTile(
//       {super.key, this.color = AppColors.white, this.radius = 10});

//   final Color color;
//   final double radius;

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(radius),
//       child: Container(
//         padding: EdgeInsets.all(5),
//         decoration: BoxDecoration(
//             color: color, borderRadius: BorderRadius.circular(radius)),
//         child: ,
//       ),
//     );
//   }
// }
