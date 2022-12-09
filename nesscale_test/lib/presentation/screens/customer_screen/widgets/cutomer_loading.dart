import 'package:flutter/cupertino.dart';
import 'package:nesscale_test/core/assets/lottie.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/presentation/widgets/asset_lottie_view.dart';
import 'package:nesscale_test/presentation/widgets/common_bg_tile.dart';
import 'package:nesscale_test/presentation/widgets/gap.dart';
import 'package:nesscale_test/presentation/widgets/shimmers.dart';

class CustomerLoadingWidget extends StatelessWidget {
  const CustomerLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(H: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ShimmerBase(
                height: 20,
                width: 60,
                radius: 5,
              ),
              ShimmerBase(
                height: 20,
                width: 80,
                radius: 5,
              ),
            ],
          ),
          const Gap(H: 25),
          ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => CommonBgTile(
                    bg: AppColors.bgRed,
                    radius: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        ShimmerBase(
                          height: 15,
                          width: 80,
                          color: AppColors.grey,
                          radius: 5,
                        ),
                        Gap(H: 10),
                        ShimmerBase(
                          height: 10,
                          width: 120,
                          color: AppColors.grey,
                          radius: 2,
                        ),
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => const Gap(H: 15),
              itemCount: 2),
          Gap(H: 20),
          AssetLottieView(
            path: AppLottieAssets.loading,
          )
        ],
      ),
    );
  }
}
