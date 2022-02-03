import 'package:flutter/material.dart';
import 'package:loola_store/constants/app_colors.dart';
import 'package:loola_store/core/router/router.dart';
import 'package:loola_store/view/componants/app_logo.dart';
import 'package:loola_store/view/screens/Auth/cubit/auth_cubit.dart';
import 'package:loola_store/view/screens/Auth/register/register_screen.dart';
import 'package:loola_store/view/screens/home/NavScreen.dart';
import 'package:loola_store/view/widgets/TexrFormField.dart';
import 'package:loola_store/view/widgets/app_button.dart';
import 'package:loola_store/view/widgets/app_text_button.dart';
import 'package:loola_store/view/widgets/category_text.dart';

class LoginScreenContant extends StatelessWidget {
  LoginScreenContant({required this.cubit});

  AuthCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: cubit.loginFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: AppLogo(),
            ),
            const SizedBox(
              height: 55,
            ),
            AuthTextFromField(
              hintText: "البريد الالكتروني",
              obscureText: false,
              controller: cubit.emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'email must not be empty';
                } else if (!value.contains('@')) {
                  return 'please enter a valid email';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AuthTextFromField(
              obscureText: true,
              hintText: 'كلمة المرور',
              controller: cubit.passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'password must not be empty';
                } else if (value.length < 6) {
                  return 'password must be at least 8 characters';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: AppTextButton(
                fontSize: 9,
                onTap: () {
                  //Todo add your magic rout hir
                },
                text: "نسيت كلمة المرور؟",
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            AppButton(
              text: "تسجيل الدخول",
              color: AppColors.whiteBink.withOpacity(1),
              onPressed: () async {
                if (cubit.loginFormKey.currentState!.validate()) {
                  FocusScope.of(context).unfocus();
                  cubit.passwordController.clear();

                  cubit.emailController.clear();

                  MagicRouter.navigateTo(NavScreen());
                }
              },
            ),
            const CategoryText(
              color: Colors.white,
              text: "او",
              fontSize: 9,
              fontWeight: FontWeight.normal,
            ),
            AppTextButton(
              onTap: () => MagicRouter.navigateTo(RegisterScreen()),
              text: "انشاء حساب",
              fontSize: 9,
            ),
          ],
        ),
      ),
    );
  }
}
