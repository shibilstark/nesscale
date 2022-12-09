import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/core/dimensions/dimensions.dart';
import 'package:nesscale_test/core/text/text.dart';
import 'package:nesscale_test/presentation/blocs/customers/customers_cubit.dart';
import 'package:nesscale_test/presentation/blocs/items/items_cubit.dart';
import 'package:nesscale_test/presentation/routes/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2), () {
        context.read<CustomersCubit>().loadCustomers();
        context.read<ItemsCubit>().loadItems();
        AppNavigator.pushReplacement(context, AppRouter.mainScreen);
      });
    });
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: AppDimensions.kCommonPadding,
          decoration: const BoxDecoration(
            color: AppColors.bottomNavBlue,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    AppText.mainTitle,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: AppFontWeight.kBold,
                      color: AppColors.darkBlue,
                    ),
                  ),
                ],
              ),
              RichText(
                text: const TextSpan(
                  text: 'Flutter ',
                  style: TextStyle(
                    fontWeight: AppFontWeight.kRegular,
                    fontSize: 16,
                    color: AppColors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Test',
                      style: TextStyle(
                        fontWeight: AppFontWeight.kRegular,
                        fontSize: 16,
                        color: AppColors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
