import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/core/dimensions/dimensions.dart';
import 'package:nesscale_test/presentation/routes/routes.dart';

class InoviceDetailScreen extends StatelessWidget {
  const InoviceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: AppDimensions.kAppBarHeight,
          child: InvoiceDetailAppBar()),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppDimensions.kCommonPadding,
          child: Column(
            children: [
              InvoiceDateIdInfoRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class InvoiceDateIdInfoRow extends StatelessWidget {
  const InvoiceDateIdInfoRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          DateFormat('dd:M:yyyy').format(DateTime.now()),
          style: TextStyle(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: AppFontWeight.kSemiBold),
        ),
        Text(
          '#XXX90932900',
          style: TextStyle(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: AppFontWeight.kSemiBold),
        ),
      ],
    );
  }
}

class InvoiceDetailAppBar extends StatelessWidget {
  const InvoiceDetailAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      title: Text(
        "Invoice Details",
        style: TextStyle(
            color: AppColors.darkBlue,
            fontSize: 18,
            fontWeight: AppFontWeight.kSemiBold),
      ),
      leading: IconButton(
        icon: Icon(Icons.keyboard_arrow_left, color: AppColors.darkBlue),
        onPressed: () {
          AppNavigator.pop(context);
        },
      ),
    );
  }
}
