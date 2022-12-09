// import 'package:flutter/material.dart';
// import 'package:nesscale_test/core/colors/colors.dart';
// import 'package:nesscale_test/presentation/screens/customer_screen/widgets/cutomer_date_sheet.dart';

// final _floatingActionButtonColors = [
//   AppColors.red,
//   AppColors.green,
//   AppColors.yellow,
// ];

// class MainScreenFloatingButtonWidget extends StatelessWidget {
//   const MainScreenFloatingButtonWidget({
//     Key? key,
//     required this.tabIndex,
//   }) : super(key: key);

//   final ValueNotifier<int> tabIndex;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 50,
//       width: 50,
//       child: FloatingActionButton(
//         backgroundColor: _floatingActionButtonColors[tabIndex.value],
//         onPressed: () {
//           if (tabIndex.value == 0) {
            // showDialog(
            //   context: context,
            //   builder: (context) => AlertDialog(
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(15)),
            //       contentPadding: EdgeInsets.zero,
            //       content: const DataEntrySheet(type: SheetEntryType.customer)),
            // );
//           } else if (tabIndex.value == 1) {
//             showDialog(
//               context: context,
//               builder: (context) => AlertDialog(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15)),
//                   contentPadding: EdgeInsets.zero,
//                   content: const DataEntrySheet(type: SheetEntryType.item)),
//             );
//           } else {}
//         },
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: const Icon(Icons.add, size: 25, color: AppColors.white),
//       ),
//     );
//   }
// }
