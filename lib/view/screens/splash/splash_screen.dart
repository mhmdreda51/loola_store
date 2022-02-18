import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loola_store/constants/app_colors.dart';
import 'package:loola_store/core/router/router.dart';
import 'package:loola_store/view/componants/app_logo.dart';
import 'package:loola_store/view/componants/background.dart';
import 'package:loola_store/view/screens/Auth/login/login_screen.dart';
import 'package:loola_store/view/screens/Auth/register/register_screen.dart';
import 'package:loola_store/view/widgets/app_button.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          const AppBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Transform(
                transform: Matrix4.skewY(0.2),
                child: Container(
                  height: 100.0,
                  width: double.infinity,
                  color: AppColors.darkBink.withOpacity(.6),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: AppLogo(),
                  )),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              AppButton(
                textColor: Colors.white,
                paddingTop: 12,
                width: 343,
                height: 55,
                color: AppColors.whiteBink.withOpacity(1),
                text: "تسجيل الدخول",
                onPressed: () => MagicRouter.navigateTo(LoginScreen()),
              ),
              AppButton(
                textColor: Colors.white,
                paddingTop: 12,
                width: 343,
                height: 55,
                onPressed: () => MagicRouter.navigateTo(RegisterScreen()),
                color: Colors.transparent,
                text: "انشاء حساب",
              ),
              const SizedBox(
                height: 84,
              )
            ],
          )
        ],
      )),
    );
  }
}
