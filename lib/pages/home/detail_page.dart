import 'package:ecommerce/pages/home/widgets/banner_slider.dart';
import 'package:ecommerce/pages/home/widgets/products_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageProduct = [
      'assets/images/panci1.png',
      'assets/images/panci2.png',
      'assets/images/panci3.png',
    ];

    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 22),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // icon back
              IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                iconSize: 24,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              // detail product bold
              Text(
                'Detail Product',
                style: GoogleFonts.urbanist(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // favorite icon
              IconButton(
                icon: const Icon(Icons.favorite_border),
                color: const Color(0xFFEA3A60),
                iconSize: 24,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFFE0E0E0),
                  width: 0.7,
                ),
              ),
              child: Image.asset('assets/images/panci.png', height: 290)),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Rp. 275.000',
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFEA3A60),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 14,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '4.7/5',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xFF3C3C43).withOpacity(30 / 100),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '| 226 Terjual',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xFF3C3C43).withOpacity(30 / 100),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Maxim Panda Wajan Teflon Anti Lengket 18cm Frypan + Spatula / Sutil Nylon Random',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Maxim Panda dilengkapi dengan lapisan anti lengket Black Diamond Non - Stick yang membuat makanan tidak lengket pada permukaan wajan saat dimasak dan....',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF3C3C43).withOpacity(60 / 100),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageProduct.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: Image.asset(
                    imageProduct[index],
                    height: 110,
                    width: 110,
                    fit: BoxFit.fill,
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 47,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'MaximStore',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Text(
                        '12 Ribu Pengikut ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 49,
                  height: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEA3A60),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Ikuti',
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
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Ulasan',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      const Icon(Icons.chat_bubble_outline_outlined,
                          color: Color(0xFFEA3A60), size: 24),
                      Text(
                        'Chat Seller',
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: 40,
                  color: Colors.grey.shade300,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      const Icon(Icons.shopping_cart_outlined,
                          color: Color(0xFFEA3A60), size: 24),
                      Text(
                        'Keranjang',
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: 40,
                  color: Colors.grey.shade300,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 150,
                    height: 49,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEA3A60),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Beli Sekarang',
                        style: GoogleFonts.urbanist(
                            height: 21.5 / 100,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
