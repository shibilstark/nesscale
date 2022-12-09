import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/core/dimensions/dimensions.dart';
import 'package:nesscale_test/presentation/blocs/customers/customers_cubit.dart';
import 'package:nesscale_test/presentation/screens/customer_screen/widgets/cutomer_date_sheet.dart';
import 'package:nesscale_test/presentation/screens/customer_screen/widgets/cutomer_loading.dart';
import 'package:nesscale_test/presentation/screens/customer_screen/widgets/cutomer_tile.dart';
import 'package:nesscale_test/presentation/widgets/error_widget.dart';
import 'package:nesscale_test/presentation/widgets/gap.dart';
import 'package:nesscale_test/presentation/widgets/info_sort_row.dart';

class CutomerScreen extends StatelessWidget {
  const CutomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomersCubit, CustomersState>(
      builder: (context, state) {
        if (state is CustomersError) {
          return AppErrorWidget(
            callBack: () {},
            message: '',
          );
        }
        if (state is CustomersSuccess) {
          return Column(
            children: [
              InofAndAddWidget(
                info: '3 Customers',
                onPress: () {
                  showBottomSheet(
                    context: context,
                    builder: (context) =>
                        const DataEntrySheet(type: SheetEntryType.customer),
                  );
                },
                label: "Add Customer",
              ),
              const Gap(H: 10),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => const CutomerTileWidget(),
                    separatorBuilder: (context, index) => const Gap(H: 15),
                    itemCount: 4),
              )
            ],
          );
        }
        return const CustomerLoadingWidget();
      },
    );
  }
}
