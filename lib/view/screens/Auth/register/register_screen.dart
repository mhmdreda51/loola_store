import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loola_store/view/componants/background.dart';
import 'package:loola_store/view/screens/Auth/cubit/auth_cubit.dart';

import 'componants/register_contant.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = AuthCubit.get(context);

          return SafeArea(
            child: Scaffold(
                body: Stack(
              children: [
                const AppBackground(),
                SingleChildScrollView(
                    child: RegisterScreenContant(
                  cubit: cubit,
                )),
              ],
            )),
          );
        },
      ),
    );
  }
}
