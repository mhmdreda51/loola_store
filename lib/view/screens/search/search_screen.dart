import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loola_store/core/router/router.dart';
import 'package:loola_store/view/screens/home/componants/HomeSearchBar.dart';
import 'package:loola_store/view/screens/search/controller/search_cubit.dart';
import 'package:loola_store/view/widgets/HomeAppBar.dart';
import 'package:loola_store/view/widgets/SearchGridView.dart';
import 'package:loola_store/view/widgets/category_text.dart';

import 'models/search_model.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => SearchCubit(),
        child: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            final cubit = SearchCubit.get(context);

            return Scaffold(
              appBar: homeAppBar(
                  text: "البحث",
                  icon: IconButton(
                    onPressed: () => MagicRouter.pop(),
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 24,
                      color: Colors.black,
                    ),
                  )),
              body: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      HomeSearchBar(),
                      const SizedBox(
                        height: 7,
                      ),
                      const CategoryText(
                        color: Colors.black,
                        text: "اخر بحث",
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      SearchGridView(
                        cubit: cubit,
                        gridList: searchFilterButtonList,
                        cardImage: 'assets/blac_search_icon.png',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CategoryText(
                        color: Colors.black,
                        text: "البحث الشائع",
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SearchGridView(
                        cubit: cubit,
                        gridList: popularFilterButtonList,
                        cardImage: 'assets/pop_search.png',
                      ),
                    ],
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
