import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/core/dimensions/dimensions.dart';
import 'package:nesscale_test/presentation/screens/customer_screen/customer_screen.dart';
import 'package:nesscale_test/presentation/screens/customer_screen/widgets/cutomer_date_sheet.dart';
import 'package:nesscale_test/presentation/screens/invoices_screen/invoices_screen.dart';
import 'package:nesscale_test/presentation/screens/items_screen/items_screen.dart';
import 'package:nesscale_test/presentation/screens/main_screen/widgets/appbar.dart';
import 'package:nesscale_test/presentation/screens/main_screen/widgets/bottom_nav_bar.dart';
import 'package:nesscale_test/presentation/screens/main_screen/widgets/floating_button.dart';
import 'package:nesscale_test/presentation/screens/profile_screen/profile_screen.dart';
import 'package:nesscale_test/presentation/widgets/gap.dart';
import 'package:nesscale_test/presentation/widgets/login_title.dart';

final tabs = [
  const CutomerScreen(),
  const ItemsScreen(),
  const InvoicesScreen(),
  const ProfileScreen(),
];

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final ValueNotifier<int> _tabIndex;
  @override
  void initState() {
    _tabIndex = ValueNotifier(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: ValueListenableBuilder(
      //     valueListenable: _tabIndex,
      //     builder: (context, int val, _) {
      //       return val == 3
      //           ? const Gap()
      //           : MainScreenFloatingButtonWidget(tabIndex: _tabIndex);
      //     }),
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppDimensions.kAppBarHeight.height + 20),
        child: const MainAppBarWidget(),
      ),
      body: Padding(
        padding: AppDimensions.kCommonHorizontalPadding,
        child: ValueListenableBuilder(
            valueListenable: _tabIndex,
            builder: (context, int tebIndex, _) {
              return tabs[tebIndex];
            }),
      ),
      bottomNavigationBar: BottomNavBarWidget(tabIndex: _tabIndex),
    );
  }
}
