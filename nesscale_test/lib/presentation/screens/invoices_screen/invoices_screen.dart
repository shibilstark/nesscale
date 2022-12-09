import 'package:flutter/material.dart';
import 'package:nesscale_test/presentation/screens/invoices_screen/widgets/invoice_tile.dart';
import 'package:nesscale_test/presentation/widgets/gap.dart';
import 'package:nesscale_test/presentation/widgets/info_sort_row.dart';

class InvoicesScreen extends StatelessWidget {
  const InvoicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InofAndAddWidget(
            info: '3 Invoices', onPress: () {}, label: "Add Invoice"),
        const Gap(H: 10),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => InvoiceTileWidget(),
              separatorBuilder: (context, index) => Gap(H: 15),
              itemCount: 4),
        )
      ],
    );
  }
}
