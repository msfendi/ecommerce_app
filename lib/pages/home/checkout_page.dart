import 'package:ecommerce/pages/home/widgets/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/payment_option_model.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedPayment = ValueNotifier<String>('');
    List<PaymentOptionModel> banksLimit = [payments[0], payments[1]];
    void seeAllTap() {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        builder: (BuildContext context) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: ColoredBox(
                    color: Colors.grey,
                    child: SizedBox(height: 8.0, width: 55.0),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Metode Pembayaran',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                ValueListenableBuilder(
                  valueListenable: selectedPayment,
                  builder: (context, value, _) => ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => PaymentMethod(
                      isActive: value == payments[index].code,
                      data: payments[index],
                      onTap: () {
                        selectedPayment.value = payments[index].code;
                        if (banksLimit.first != payments[index]) {
                          banksLimit[1] = payments[index];
                        }
                        Navigator.pop(context);
                      },
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 14.0),
                    itemCount: payments.length,
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 22),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                iconSize: 24,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                'Checkout',
                style: GoogleFonts.urbanist(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 30,
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            height: 155,
            decoration: BoxDecoration(
              color: const Color(0xFFFDF5F3),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFFE0E0E0),
                width: 0.7,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.shopping_cart_outlined,
                            color: Color(0xFFEA3A60), size: 24),
                        Text(
                          'Alamat Pengiriman',
                          style: GoogleFonts.urbanist(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 24,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEA3A60),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'Ganti Alamat',
                            style: GoogleFonts.urbanist(
                                // height: 21.5 / 100,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Danilla Puspa | (+62) 877-0651-9987 \nDesa Tanjungsari Dusun Dodokan RT 24/ RW 03, \nKec Taman Kab Sidoarjo \nTAMAN, KAB. SIDOARJO, JAWA TIMUR, ID 61258',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 113,
                  width: 145,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFFE0E0E0),
                      width: 1,
                    ),
                  ),
                  child: Image.asset('assets/images/panci.png')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Maxim Panda Wajan\nTeflon Anti Lengket 18cm ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Rp. 275.000',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFEA3A60),
                        ),
                      ),
                      Text(
                        'x1',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xFF3C3C43).withOpacity(30 / 100),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            'Opsi Pengiriman',
            style: GoogleFonts.urbanist(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/shipping.png',
                    height: 24,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    'REGULER',
                    style: GoogleFonts.urbanist(
                        height: 25.5 / 100,
                        color: const Color(0xFF242424),
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Rp.35.000',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                      letterSpacing: 0.5,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios_outlined),
                    iconSize: 24,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Estimasi diterima pada tanggal 4-7 Jul',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF3C3C43).withOpacity(60 / 100),
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            'Metode pembayaran',
            style: GoogleFonts.urbanist(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/payment.png',
                    height: 46,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Pilih Metode Pembayaran',
                    style: GoogleFonts.urbanist(
                        height: 140 / 100,
                        color: const Color(0xFFEA3A60),
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios_outlined),
                iconSize: 24,
                onPressed: () {
                  seeAllTap();
                },
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            height: 54,
            decoration: BoxDecoration(
              color: const Color(0xFFFDF5F3),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFFE0E0E0),
                width: 0.7,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/Ticket.png',
                      height: 46,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Voucher',
                      style: GoogleFonts.urbanist(
                          height: 140 / 100,
                          color: const Color(0xFFEA3A60),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ],
                ),
                Text(
                  '1 Digunakan',
                  style: GoogleFonts.urbanist(
                      height: 140 / 100,
                      color: const Color(0xFFEA3A60),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            'Rincian Pembayaran',
            style: GoogleFonts.urbanist(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal Produk',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                'Rp. 275.000',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal Pengiriman',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                'Rp. 35.000',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Voucher Diskon',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                'Rp. 15.000',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Biaya Layanan',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                'Rp. 5.000',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: GoogleFonts.urbanist(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                ),
              ),
              Text(
                'Rp. 300.000',
                style: GoogleFonts.urbanist(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFFEA3A60),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade300,
          ),
        ],
      )),
    );
  }
}
