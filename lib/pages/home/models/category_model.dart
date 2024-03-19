class CategoryModel {
  final String urlImage;
  final String name;

  CategoryModel({required this.urlImage, required this.name});
}

List<CategoryModel> categoryList = [
  CategoryModel(urlImage: 'assets/icons/Category.png', name: 'Kategori'),
  CategoryModel(urlImage: 'assets/icons/purse-tick.png', name: 'Top Up'),
  CategoryModel(urlImage: 'assets/icons/mobile-coin.png', name: 'Transfer'),
  CategoryModel(urlImage: 'assets/icons/Paper.png', name: 'Tagihan'),
  CategoryModel(urlImage: 'assets/icons/Discount.png', name: 'Promo'),
];
