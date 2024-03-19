import 'package:ecommerce/pages/home/models/product_model.dart';
import 'package:ecommerce/pages/home/widgets/banner_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/category_menu.dart';
import 'widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> banners1 = [
      'assets/images/gambar1.png',
      'assets/images/gambar2.png',
      'assets/images/gambar3.png',
    ];

    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 24),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(11),
                      hintText: 'Search',
                      prefixIcon: const Icon(Icons.search_rounded),
                      prefixIconColor:
                          const Color(0xFF3C3C43).withOpacity(30 / 100),
                      hintStyle: GoogleFonts.urbanist(
                          color: const Color(0xFF3C3C43).withOpacity(30 / 100),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          height: 21.5 / 100),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          strokeAlign: 0.1,
                          color: const Color(0xFF3C3C43).withOpacity(30 / 100),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 17),
                Image.asset(
                  'assets/icons/Buy.png',
                  height: 24,
                ),
                const SizedBox(width: 17),
                Image.asset(
                  'assets/icons/Notification.png',
                  height: 24,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            BannerSlider(items: banners1),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 63,
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFF3C3C43).withOpacity(30 / 100),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Saldo saya',
                        style: GoogleFonts.urbanist(
                            height: 21 / 100,
                            color:
                                const Color(0xFF3C3C43).withOpacity(60 / 100),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/wallet-open.png',
                            height: 24,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Rp 9.560.000',
                            style: GoogleFonts.urbanist(
                                height: 25.5 / 100,
                                color: const Color(0xFFEA3A60),
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 45,
                    width: 2,
                    color: Colors.grey.shade300,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Voucher saya',
                        style: GoogleFonts.urbanist(
                            height: 21 / 100,
                            color:
                                const Color(0xFF3C3C43).withOpacity(60 / 100),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/Ticket.png',
                            height: 24,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text(
                            '4 Voucher',
                            style: GoogleFonts.urbanist(
                                height: 25.5 / 100,
                                color: const Color(0xFFEA3A60),
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const CategoryMenu(),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rekomendasi',
                  style: GoogleFonts.urbanist(
                      color: const Color(0xFF292C33),
                      fontWeight: FontWeight.bold,
                      height: 26 / 100,
                      fontSize: 20),
                ),
                Text(
                  'See more',
                  style: GoogleFonts.urbanist(
                      color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                      fontWeight: FontWeight.w500,
                      height: 21 / 100,
                      fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 24),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (itemWidth / itemHeight),
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 14,
                  mainAxisExtent: 325),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: productList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => ProductCard(
                name: productList[index].name,
                category: productList[index].category,
                totalBuyed: productList[index].totalBuyed,
                price: productList[index].price,
                image: productList[index].image,
              ),
            )
          ],
        ),
      ),
    );
  }
}
