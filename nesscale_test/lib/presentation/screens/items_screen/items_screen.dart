import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nesscale_test/presentation/blocs/items/items_cubit.dart';
import 'package:nesscale_test/presentation/screens/customer_screen/widgets/cutomer_date_sheet.dart';
import 'package:nesscale_test/presentation/screens/items_screen/widgets/items_loading.dart';
import 'package:nesscale_test/presentation/screens/items_screen/widgets/items_tile.dart';
import 'package:nesscale_test/presentation/widgets/error_widget.dart';
import 'package:nesscale_test/presentation/widgets/gap.dart';
import 'package:nesscale_test/presentation/widgets/info_sort_row.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsCubit, ItemsState>(
      builder: (context, state) {
        if (state is ItemsError) {
          return AppErrorWidget(message: '', callBack: () {});
        }

        if (state is ItemsSuccess) {
          return Column(
            children: [
              InofAndAddWidget(
                  info: '3 Items',
                  onPress: () {
                    showBottomSheet(
                      context: context,
                      builder: (context) =>
                          const DataEntrySheet(type: SheetEntryType.item),
                    );
                  },
                  label: 'Add Item'),
              const Gap(H: 10),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => ItemsTileWidget(),
                    separatorBuilder: (context, index) => Gap(H: 15),
                    itemCount: 4),
              )
            ],
          );
        }

        return ItemLoadingWidget();
      },
    );
  }
}
