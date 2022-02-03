class FilterButtonModel {
  String text;

  bool isSelected;

  FilterButtonModel({required this.text, required this.isSelected});
}

List<FilterButtonModel> searchFilterButtonList = [
  FilterButtonModel(
    text: "حذاء",
    isSelected: false,
  ),
  FilterButtonModel(
    text: "بنطلون",
    isSelected: false,
  ),
  FilterButtonModel(
    text: "طرحه",
    isSelected: false,
  ),
  FilterButtonModel(
    text: "بوركيني",
    isSelected: false,
  ),
  FilterButtonModel(
    text: 'حلق',
    isSelected: false,
  ),
  FilterButtonModel(
    text: "ساعه",
    isSelected: false,
  ),
];

List<FilterButtonModel> popularFilterButtonList = [
  FilterButtonModel(
    text: 'جزمة كعب',
    isSelected: false,
  ),
  FilterButtonModel(
    text: 'جيبه',
    isSelected: false,
  ),
  FilterButtonModel(
    text: 'معطف',
    isSelected: false,
  ),
  FilterButtonModel(
    text: 'فستان',
    isSelected: false,
  ),
  FilterButtonModel(
    text: 'مايو',
    isSelected: false,
  ),
  FilterButtonModel(
    text: 'صنادل',
    isSelected: false,
  ),
  FilterButtonModel(
    text: 'حقيبة',
    isSelected: false,
  ),
  FilterButtonModel(
    text: 'اسورة',
    isSelected: false,
  ),
  FilterButtonModel(
    text: 'شبشب',
    isSelected: false,
  ),
];
