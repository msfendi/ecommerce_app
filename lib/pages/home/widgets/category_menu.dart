import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/category_model.dart';

class CategoryMenu extends StatelessWidget {
  const CategoryMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 53,
        child: Center(
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 24),
            itemCount: categoryList.length,
            itemBuilder: (context, index) => Column(
              children: [
                Image.asset(
                  categoryList[index].urlImage,
                  height: 24,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  categoryList[index].name,
                  style: GoogleFonts.urbanist(
                      height: 21 / 100,
                      color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
