import 'package:flutter/material.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/core/dimensions/dimensions.dart';
import 'package:nesscale_test/presentation/screens/customer_screen/widgets/cutomer_tile.dart';
import 'package:nesscale_test/presentation/widgets/gap.dart';
import 'package:nesscale_test/presentation/widgets/info_sort_row.dart';

class CutomerTileWidget extends StatelessWidget {
  const CutomerTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: AppColors.bgRed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      dense: true,
      title: Text(
        "John Doe",
        style: TextStyle(
            fontSize: 16,
            fontWeight: AppFontWeight.kSemiBold,
            color: AppColors.black),
      ),
      subtitle: Text(
        "jhonedeofinancial@gmail.com",
        style: TextStyle(
          fontSize: 12,
          fontWeight: AppFontWeight.kSemiBold,
          color: AppColors.black.withOpacity(0.7),
        ),
      ),
    );
  }
}
