import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class DetailOrderPage extends StatelessWidget {
  const DetailOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    'Detail Pesanan',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.local_shipping_outlined,
                          color: Color(0xFFEA3A60), size: 28),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Informasi Pengiriman',
                        style: GoogleFonts.urbanist(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 61,
                      height: 32,
                      decoration: BoxDecoration(
                        // color: const Color(0xFFEA3A60),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xFFEA3A60),
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Lacak',
                          style: GoogleFonts.urbanist(
                              // height: 21.5 / 100,
                              color: const Color(0xFFEA3A60),
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 43, bottom: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'REGULER',
                      style: GoogleFonts.urbanist(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                      ),
                    ),
                    Text(
                      'JNE - 200034786798',
                      style: GoogleFonts.urbanist(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                    height: 25.0,
                    child: TimelineTile(
                      isFirst: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pesanan telah dikemas oleh penjual',
                          style: GoogleFonts.urbanist(
                              // height: 21.5 / 100,
                              color: const Color(0xFFEA3A60),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        Text(
                          '04-06-2023  13:10',
                          style: GoogleFonts.urbanist(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color:
                                const Color(0xFF3C3C43).withOpacity(60 / 100),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade300,
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined,
                          color: Color(0xFFEA3A60), size: 28),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Alamat Pengiriman',
                        style: GoogleFonts.urbanist(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 108,
                      height: 32,
                      decoration: BoxDecoration(
                        // color: const Color(0xFFEA3A60),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xFFEA3A60),
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Ganti Alamat',
                          style: GoogleFonts.urbanist(
                              // height: 21.5 / 100,
                              color: const Color(0xFFEA3A60),
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 115,
                decoration: BoxDecoration(
                  color: const Color(0xFFFDF5F3),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFFE0E0E0),
                    width: 0.7,
                  ),
                ),
                child: Text(
                  'Danilla Puspa | (+62) 877-0651-9987 \nDesa Tanjungsari Dusun Dodokan RT 24/ RW 03, \nKec Taman Kab Sidoarjo \nTAMAN, KAB. SIDOARJO, JAWA TIMUR, ID 61258',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MaximStore',
                    style: GoogleFonts.urbanist(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 108,
                      height: 32,
                      decoration: BoxDecoration(
                        // color: const Color(0xFFEA3A60),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xFFEA3A60),
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Kunjungi Toko',
                          style: GoogleFonts.urbanist(
                              // height: 21.5 / 100,
                              color: const Color(0xFFEA3A60),
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade300,
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
                              color:
                                  const Color(0xFF3C3C43).withOpacity(30 / 100),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Pesanan',
                    style: GoogleFonts.urbanist(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                    ),
                  ),
                  Text(
                    'Rp. 300.000',
                    style: GoogleFonts.urbanist(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFEA3A60),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Metode Pembayaran',
                    style: GoogleFonts.urbanist(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/cod.png',
                        height: 24,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'COD',
                        style: GoogleFonts.urbanist(
                            height: 25.5 / 100,
                            color: const Color(0xFF242424),
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade300,
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'No. Pesanan',
                    style: GoogleFonts.urbanist(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '2736TDK56ANE',
                    style: GoogleFonts.urbanist(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Waktu Pemesanan',
                    style: GoogleFonts.urbanist(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                    ),
                  ),
                  Text(
                    '04-06-2023  13:00',
                    style: GoogleFonts.urbanist(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Waktu Pengiriman',
                    style: GoogleFonts.urbanist(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                    ),
                  ),
                  Text(
                    '04-06-2023  13:10',
                    style: GoogleFonts.urbanist(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2 - 30,
                      height: 49,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEA3A60),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Batalkan Pesanan',
                          style: GoogleFonts.urbanist(
                              height: 21.5 / 100,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2 - 30,
                      height: 49,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFFE0E0E0),
                          width: 0.7,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Pesanan Diterima',
                          style: GoogleFonts.urbanist(
                              height: 21.5 / 100,
                              color: const Color(0xFFEA3A60),
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
