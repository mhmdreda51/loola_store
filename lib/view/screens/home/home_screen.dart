import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loola_store/view/screens/home/controller/home_cubit.dart';
import 'package:loola_store/view/widgets/HomeAppBar.dart';
import 'package:loola_store/view/widgets/category_text.dart';

import 'componants/HomeSearchBar.dart';
import 'componants/app_bar_icon.dart';
import 'componants/category_button.dart';
import 'componants/discount_item_gril.dart';
import 'componants/home_carousel.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            final cubit = HomeCubit.get(context);

            return Scaffold(
              appBar: homeAppBar(text: "الصفحة الرئيسية", icon: AppBarIcon()),
              body: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        HomeSearchBar(),
                        const Padding(
                          padding: EdgeInsets.all(11.0),
                          child: CategoryText(
                            fontSize: 18,
                            text: "الفئات",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        CategoryButton(),
                        const Padding(
                          padding: EdgeInsets.all(11.0),
                          child: CategoryText(
                            fontSize: 18,
                            text: "عروض",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        HomeCarousel(cubit: cubit),
                        const Padding(
                          padding: EdgeInsets.all(11.0),
                          child: CategoryText(
                            fontSize: 18,
                            text: "خصومات",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const DicountItemGril(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
