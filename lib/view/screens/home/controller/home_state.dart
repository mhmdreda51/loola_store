part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class ShopChangeBottomNavState extends HomeState {}

class ChangeCarouselIndex extends HomeState {}
