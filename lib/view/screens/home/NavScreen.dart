import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loola_store/constants/app_colors.dart';

import 'controller/home_cubit.dart';

class NavScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return SafeArea(
          child: Scaffold(
            body: cubit.tapbascreens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.navColor,
              selectedItemColor: AppColors.darkBink,
              unselectedItemColor: Colors.white,
              currentIndex: cubit.currentIndex,
              onTap: (index) => cubit.changeBottomViews(index),
              items: const [
                BottomNavigationBarItem(
                    icon: Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: FaIcon(FontAwesomeIcons.home)),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Icon(Icons.favorite),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Icon(Icons.settings),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Icon(Icons.local_shipping),
                    ),
                    label: ''),
              ],
            ),
          ),
        );
      },
    );
  }
}
