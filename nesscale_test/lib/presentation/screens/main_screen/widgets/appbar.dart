import 'package:flutter/material.dart';
import 'package:nesscale_test/core/dimensions/dimensions.dart';
import 'package:nesscale_test/presentation/widgets/login_title.dart';

class MainAppBarWidget extends StatelessWidget {
  const MainAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: const PreferredSize(
        preferredSize: AppDimensions.kAppBarHeight,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Align(
            alignment: Alignment.centerLeft,
            child: LoginTitleWidget(),
          ),
        ),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
