import 'package:flutter/material.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/core/dimensions/dimensions.dart';
import 'package:nesscale_test/presentation/screens/main_screen/main_screen.dart';

final _tabIcons = [
  Icons.group,
  Icons.stacked_bar_chart,
  Icons.file_copy,
  Icons.person,
];
final _tabLabels = [
  "Customers",
  "Items",
  "Invoices",
  "Profile",
];

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    Key? key,
    required ValueNotifier<int> tabIndex,
  })  : _tabIndex = tabIndex,
        super(key: key);

  final ValueNotifier<int> _tabIndex;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _tabIndex,
        builder: (context, int val, _) {
          return Padding(
            padding: AppDimensions.kBottomNavPadding,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                elevation: 0,
                currentIndex: _tabIndex.value,
                onTap: (value) {
                  _tabIndex.value = value;
                  _tabIndex.notifyListeners();
                },
                items: List.generate(
                    tabs.length,
                    (index) => BottomNavigationBarItem(
                        icon: Column(
                          children: [
                            Icon(
                              _tabIcons[index],
                              color: AppColors.darkBlue,
                            ),
                            index == _tabIndex.value
                                ? Text(_tabLabels[index],
                                    style: const TextStyle(
                                      color: AppColors.darkBlue,
                                      fontWeight: AppFontWeight.kSemiBold,
                                      fontSize: 10,
                                    ))
                                : const SizedBox(),
                          ],
                        ),
                        label: _tabLabels[index])),
              ),
            ),
          );
        });
  }
}
