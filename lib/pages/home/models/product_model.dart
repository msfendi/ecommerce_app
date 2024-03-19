class ProductModel {
  final String name;
  final String category;
  final int totalBuyed;
  final double price;
  final String image;

  ProductModel(
      {required this.name,
      required this.category,
      required this.totalBuyed,
      required this.price,
      required this.image});
}

List<ProductModel> productList = [
  ProductModel(
      name: 'Helm Polos Retro Bogo SNI ',
      category: 'Otomotif',
      totalBuyed: 226,
      price: 250000,
      image: 'assets/images/helm.png'),
  ProductModel(
      name: 'Brianna Black Thanksinsomnia',
      category: 'T-Shirt',
      totalBuyed: 650,
      price: 230000,
      image: 'assets/images/kaos.png'),
  ProductModel(
      name: 'Panci Set Oxone',
      category: 'Perlengkapan Dapur',
      totalBuyed: 100,
      price: 150000,
      image: 'assets/images/panci.png'),
  ProductModel(
      name: 'Laptop Asus ROG Strix G531GT',
      category: 'Elektronik',
      totalBuyed: 100,
      price: 150000000,
      image: 'assets/images/laptop.png'),
];
