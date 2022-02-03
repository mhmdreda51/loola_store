import 'package:flutter/material.dart';
import 'package:loola_store/constants/app_colors.dart';
import 'package:loola_store/core/router/router.dart';
import 'package:loola_store/view/componants/app_logo.dart';
import 'package:loola_store/view/screens/Auth/cubit/auth_cubit.dart';
import 'package:loola_store/view/screens/Auth/login/login_screen.dart';
import 'package:loola_store/view/screens/home/NavScreen.dart';
import 'package:loola_store/view/widgets/TexrFormField.dart';
import 'package:loola_store/view/widgets/app_button.dart';
import 'package:loola_store/view/widgets/app_text_button.dart';
import 'package:loola_store/view/widgets/category_text.dart';

class RegisterScreenContant extends StatelessWidget {
  AuthCubit cubit;

  RegisterScreenContant({required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: cubit.registerFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: AppLogo(),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Expanded(
                  child: AuthTextFromField(
                    hintText: "الاسم الثاني",
                    obscureText: false,
                    controller: cubit.lastNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'name must not be empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Expanded(
                  child: AuthTextFromField(
                    hintText: "الاسم الاول",
                    obscureText: false,
                    controller: cubit.firstNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'name must not be empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            AuthTextFromField(
              hintText: 'البريد الالكتروني',
              controller: cubit.regEmailController,
              obscureText: false,
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
              hintText: 'كلمة المرور',
              controller: cubit.regEmailController,
              obscureText: true,
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
            AuthTextFromField(
              obscureText: true,
              hintText: 'تأكيد كلمة المرور',
              controller: cubit.passwordConformationController,
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
            AuthTextFromField(
              obscureText: false,
              hintText: 'رقم الهاتف',
              controller: cubit.phoneNumController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'phone must not be empty';
                } else if (value.length < 11) {
                  return 'phone number must be 11 digits';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AuthTextFromField(
              obscureText: false,
              hintText: 'العنوان',
              controller: cubit.addressController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'address must not be empty';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AppButton(
              text: "انشاء حساب",
              color: AppColors.whiteBink.withOpacity(1),
              onPressed: () {
                if (cubit.registerFormKey.currentState!.validate()) {
                  FocusScope.of(context).unfocus();
                  cubit.lastNameController.clear();
                  cubit.addressController.clear();
                  cubit.phoneNumController.clear();
                  cubit.passwordConformationController.clear();
                  cubit.regPasswordController.clear();
                  cubit.regEmailController.clear();
                  cubit.firstNameController.clear();

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
              onTap: () => MagicRouter.navigateTo(LoginScreen()),
              text: "تسجيل الدخول",
              fontSize: 11,
            ),
          ],
        ),
      ),
    );
  }
}
