import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/data/db/db.dart';
import 'package:nesscale_test/domain/injection/di.dart';
import 'package:nesscale_test/presentation/blocs/bloc_provider.dart';
import 'package:nesscale_test/presentation/routes/routes.dart';

void main() async {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: AppColors.white,
  //   statusBarIconBrightness: Brightness.dark,
  //   statusBarBrightness: Brightness.light,
  // ));

  await AppLocalDb.initialize();
  await configureInjection();
  BlocProviderSingleton.initialize();
  runApp(const NesscaleApp());
}

class NesscaleApp extends StatelessWidget {
  const NesscaleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: BlocProviderSingleton.customersCubit),
        BlocProvider.value(value: BlocProviderSingleton.itemsCubit),
      ],
      child: MaterialApp(
          theme: ThemeData(
              fontFamily: 'Inter',
              scaffoldBackgroundColor: AppColors.white,
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  backgroundColor: AppColors.bottomNavBlue)),
          debugShowCheckedModeBanner: false,
          initialRoute: AppRouter.splashScreen,
          onGenerateRoute: AppRouter.onGeneratedRoute),
    );
  }
}
