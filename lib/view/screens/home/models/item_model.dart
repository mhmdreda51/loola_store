class ItemModel {
  final String categoryName;
  final String image;
  final double realPrice;
  final double rate;
  final double discountPrice;

  ItemModel({
    required this.categoryName,
    required this.image,
    required this.realPrice,
    required this.rate,
    required this.discountPrice,
  });
}

List<ItemModel> itemModel = [
  ItemModel(
    categoryName: 'حذاء نسائي مسطح من الجلد الطبيعي',
    image: "assets/category.jpg",
    discountPrice: 195,
    realPrice: 200,
    rate: 3.0,
  ),
  ItemModel(
    categoryName: 'حذاء نسائي مسطح من الجلد الطبيعي',
    image: "assets/category.jpg",
    discountPrice: 195,
    realPrice: 200,
    rate: 3.0,
  ),
  ItemModel(
    categoryName: 'فستان نسائي احمر بحزام',
    image: "assets/category.jpg",
    discountPrice: 195,
    realPrice: 200,
    rate: 3.0,
  ),
  ItemModel(
    categoryName: 'جامبسوت بيج اوفر سايز',
    image: "assets/category.jpg",
    discountPrice: 195,
    realPrice: 200,
    rate: 3.0,
  ),
  ItemModel(
    categoryName: 'ترينج بيج قطعتين',
    image: "assets/category.jpg",
    discountPrice: 195,
    realPrice: 200,
    rate: 3.0,
  ),
  ItemModel(
    categoryName: 'حذاء نسائي مسطح من الجلد الطبيعي',
    image: "assets/category.jpg",
    discountPrice: 195,
    realPrice: 200,
    rate: 3.0,
  ),
  ItemModel(
    categoryName: 'فستان نسائي احمر بحزام',
    image: "assets/category.jpg",
    discountPrice: 195,
    realPrice: 200,
    rate: 3.0,
  ),
];
