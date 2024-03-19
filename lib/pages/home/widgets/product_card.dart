import 'package:ecommerce/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String category;
  final int totalBuyed;
  final double price;
  final String image;

  const ProductCard({
    super.key,
    required this.name,
    required this.category,
    required this.totalBuyed,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 400,
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 11,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color(0xFFFDF5F3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              image,
              height: 160,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            category,
            style: GoogleFonts.urbanist(
                color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                fontWeight: FontWeight.w500,
                // height: 21 / 100,
                fontSize: 14),
          ),
          const SizedBox(height: 4),
          Text(
            name,
            style: GoogleFonts.urbanist(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                // height: 21 / 100,
                fontSize: 17),
          ),
          const SizedBox(height: 4),
          Text(
            '$totalBuyed Terjual ',
            style: GoogleFonts.urbanist(
                color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                fontWeight: FontWeight.w500,
                // height: 21 / 100,
                fontSize: 14),
          ),
          const SizedBox(height: 10),
          Text(
            price.currencyFormatRp,
            style: GoogleFonts.urbanist(
                color: const Color(0xFFEA3A60),
                fontWeight: FontWeight.w600,
                // height: 25.5 / 100,
                fontSize: 17),
          )
        ],
      ),
    );
  }
}
