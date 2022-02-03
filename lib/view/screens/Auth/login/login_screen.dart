import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loola_store/view/componants/background.dart';
import 'package:loola_store/view/screens/Auth/cubit/auth_cubit.dart';

import 'componants/contant.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = AuthCubit.get(context);
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  const AppBackground(),
                  SingleChildScrollView(
                    child: LoginScreenContant(
                      cubit: cubit,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
