class CategoryModel {
  final String categoryName;
  final String image;

  CategoryModel({required this.categoryName, required this.image});
}

List<CategoryModel> categoryButtonModel = [
  CategoryModel(categoryName: 'فساتين', image: "assets/category.jpg"),
  CategoryModel(
      categoryName: 'ملابس علوية و اطقم', image: "assets/category.jpg"),
  CategoryModel(categoryName: 'بناطيل و جيبات', image: "assets/category.jpg"),
  CategoryModel(categoryName: 'ملابس خارجية', image: "assets/category.jpg"),
  CategoryModel(categoryName: 'حجابات', image: "assets/category.jpg"),
  CategoryModel(categoryName: 'احذية', image: "assets/category.jpg"),
  CategoryModel(categoryName: 'حقائب', image: "assets/category.jpg"),
  CategoryModel(categoryName: 'ملابس رياضية', image: "assets/category.jpg"),
  CategoryModel(categoryName: 'مستحضرات تجميل', image: "assets/category.jpg"),
  CategoryModel(categoryName: 'ملابس السباحة', image: "assets/category.jpg"),
  CategoryModel(categoryName: 'ملابس سهرة', image: "assets/category.jpg"),
  CategoryModel(categoryName: 'اكسسوارات', image: "assets/category.jpg"),
];
