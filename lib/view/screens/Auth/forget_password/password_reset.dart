import 'package:flutter/material.dart';
import 'package:loola_store/view/screens/Auth/forget_password/password_forget.dart';
import 'package:loola_store/view/screens/Auth/login/login_screen.dart';

import '../../../../constants/app_colors.dart';
import '../../../../core/router/router.dart';
import '../../../componants/app_logo.dart';
import '../../../componants/background.dart';
import '../../../widgets/TexrFormField.dart';
import '../../../widgets/app_button.dart';

class PasswordReset extends StatelessWidget {
  @override
  TextEditingController emailController = TextEditingController();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              const AppBackground(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 140),
                        child: AppLogo(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 31),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                            onPressed: () =>
                                MagicRouter.navigateTo(PasswordForget()),
                          ),
                        ),
                      ),
                      const SizedBox(height: 42),
                      AuthTextFromField(
                        controller: emailController,
                        hintText: "كلمة المرور الجديده",
                        obscureText: true,
                        validator: () {},
                      ),
                      const SizedBox(height: 28.5),
                      AuthTextFromField(
                        controller: emailController,
                        hintText: "تأكيد كلمة المرور الجديدة",
                        obscureText: true,
                        validator: () {},
                      ),
                      const SizedBox(height: 56.5),
                      AppButton(
                        text: "انتهيت",
                        onPressed: () => MagicRouter.navigateTo(LoginScreen()),
                        color: AppColors.darkBink,
                        width: 343,
                        height: 49,
                        paddingTop: 12,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
