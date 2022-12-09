import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/core/dimensions/dimensions.dart';
import 'package:nesscale_test/presentation/routes/routes.dart';
import 'package:nesscale_test/presentation/screens/customer_screen/widgets/cutomer_tile.dart';
import 'package:nesscale_test/presentation/widgets/gap.dart';
import 'package:nesscale_test/presentation/widgets/info_sort_row.dart';

class InvoiceTileWidget extends StatelessWidget {
  const InvoiceTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            tileColor: AppColors.bgYellow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: const Text(
              "John Doe",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: AppFontWeight.kSemiBold,
                  color: AppColors.black),
            ),
            subtitle: Text(
              DateFormat('dd/M/yyyy').format(DateTime.now()),
              style: TextStyle(
                fontSize: 12,
                fontWeight: AppFontWeight.kSemiBold,
                color: AppColors.black.withOpacity(0.7),
              ),
            ),
            trailing: const Text(
              '\$ 20',
              style: TextStyle(
                fontSize: 20,
                fontWeight: AppFontWeight.kSemiBold,
                color: AppColors.black,
              ),
            ),
          ),
        ),
        IconButton(
            onPressed: () {
              AppNavigator.push(context, AppRouter.detailInvoice);
            },
            icon: Icon(
              Icons.keyboard_arrow_right,
              size: 30,
            ))
      ],
    );
  }
}
