class Category {
  final String title, iconPath;

  Category({required this.title, required this.iconPath});
}

List<Category> category_list = [
  Category(title: 'T-shirts', iconPath: 'assets/icons/icon_wb_t-shirts.svg'),
  Category(title: 'Jackets', iconPath: 'assets/icons/icon_wb_jacket.svg'),
  Category(title: 'Shorts', iconPath: 'assets/icons/icon_wb_shorts.svg'),
  Category(title: 'Pants', iconPath: 'assets/icons/icon_wb_pants.svg'),
];