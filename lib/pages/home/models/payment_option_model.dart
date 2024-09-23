class PaymentOptionModel {
  final String code;
  final String name;
  final String image;

  PaymentOptionModel(
      {required this.code, required this.name, required this.image});
}

final payments = [
  PaymentOptionModel(
    code: 'wallet',
    name: 'Wallet',
    image: 'assets/icons/wallet.png',
  ),
  PaymentOptionModel(
      code: 'transfer',
      name: 'Transfer Bank',
      image: 'assets/icons/transfer.png'),
  PaymentOptionModel(
    code: 'debit',
    name: 'Kartu Kredit/Debit',
    image: 'assets/icons/debit.png',
  ),
  PaymentOptionModel(
    code: 'cod',
    name: 'COD (Cash on Delivery)',
    image: 'assets/icons/cod.png',
  ),
];
