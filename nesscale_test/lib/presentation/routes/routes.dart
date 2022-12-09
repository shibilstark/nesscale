import 'package:flutter/material.dart';
import 'package:nesscale_test/presentation/screens/invoice_detail_screen/invoice_detail_screen.dart';
import 'package:nesscale_test/presentation/screens/login_screen/login_screen.dart';
import 'package:nesscale_test/presentation/screens/main_screen/main_screen.dart';
import 'package:nesscale_test/presentation/screens/splash_screen/splash_screen.dart';

class AppRouter {
  static const splashScreen = '/';
  static const loginScreen = '/login';
  static const detailInvoice = '/inovoice';
  static const mainScreen = '/home';

  static Route? onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case mainScreen:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case detailInvoice:
        return MaterialPageRoute(builder: (_) => const InoviceDetailScreen());
      default:
        return null;
    }
  }
}

class AppNavigator {
  static push(BuildContext context, String name, {ScreenArgs? args}) {
    Navigator.of(context).pushNamed(name, arguments: args);
  }

  static pop(BuildContext context) {
    Navigator.of(context).pop();
  }

  static pushReplacement(BuildContext context, String name,
      {ScreenArgs? args}) {
    Navigator.of(context).pushReplacementNamed(name, arguments: args);
  }
}

class ScreenArgs {
  final Map<String, dynamic> params;
  const ScreenArgs(this.params);
}
