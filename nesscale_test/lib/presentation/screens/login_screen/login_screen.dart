import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nesscale_test/core/assets/images.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/core/dimensions/dimensions.dart';
import 'package:nesscale_test/presentation/routes/routes.dart';
import 'package:nesscale_test/presentation/screens/login_screen/widgets/login_button.dart';
import 'package:nesscale_test/presentation/widgets/asset_image_view.dart';
import 'package:nesscale_test/presentation/widgets/custom_textfield.dart';
import 'package:nesscale_test/presentation/widgets/gap.dart';
import 'package:nesscale_test/presentation/widgets/login_title.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final ValueNotifier<TextEditingController> userNameController;
  late final ValueNotifier<TextEditingController> passwordController;
  late final FocusNode usernameFocusNode;
  late final FocusNode passwordFocusNode;
  @override
  void initState() {
    userNameController = ValueNotifier(TextEditingController());
    passwordController = ValueNotifier(TextEditingController());
    usernameFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: LoginHintWidget(),
        body: Container(
          padding: AppDimensions.kCommonPadding,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.bottomNavBlue,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginTitleWidget(),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: AssetImageView(
                    path: AppAssetImages.kLoginBg,
                    maxHeight: size.height * 0.3,
                    width: double.infinity,
                  ),
                ),
                const Gap(H: 50),
                const Text(
                  "Login to Your Account",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: AppFontWeight.kMedium,
                    color: AppColors.darkBlue,
                  ),
                ),
                const Gap(H: 30),
                Column(
                  children: [
                    CustomTextField(
                      hintText: 'Username',
                      controller: userNameController.value,
                      focusNode: usernameFocusNode,
                      height: 40,
                    ),
                    const Gap(H: 20),
                    CustomTextField(
                      hintText: 'Password',
                      controller: passwordController.value,
                      focusNode: passwordFocusNode,
                      height: 40,
                    ),
                  ],
                ),
                const Gap(H: 40),
                LoginButtonWidget(
                  userNameController: userNameController,
                  passwordController: passwordController,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginHintWidget extends StatelessWidget {
  const LoginHintWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 45,
      child: FloatingActionButton(
        backgroundColor: AppColors.black,
        onPressed: () {
          AppNavigator.push(context, AppRouter.mainScreen);
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.lightbulb,
            color: AppColors.yellow,
          ),
        ),
      ),
    );
  }
}
