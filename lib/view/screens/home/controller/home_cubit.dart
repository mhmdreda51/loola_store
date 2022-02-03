import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../home_screen.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> tapbascreens = [
    HomeScreen(),
    Center(
      child: Text('2'),
    ),
    Center(
      child: Text('3'),
    ),
    Center(
      child: Text('4'),
    ),
  ];

  void changeBottomViews(int index) {
    currentIndex = index;
    emit(ShopChangeBottomNavState());
  }

//===============================================================
  int carouselIndex = 0;

  changeCarouselIndex({required int index}) {
    carouselIndex = index;
    emit(ChangeCarouselIndex());
  }

  List carouselImage = [
    'assets/banner1.png',
    'assets/banner2.jfif',
  ];
}
