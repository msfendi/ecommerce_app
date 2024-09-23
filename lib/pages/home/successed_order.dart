import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessedOrder extends StatelessWidget {
  const SuccessedOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      'Pesanan Berhasil',
                      style: GoogleFonts.urbanist(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFEA3A60),
                      ),
                    ),
                    Text(
                      'Selamat! pesananmu berhasil dibuat, cek\ntombol di bawah untuk mengetahui detail\npesananmu',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.urbanist(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                      ),
                    ),
                  ],
                ),
              ),
              // image
              Image.asset(
                'assets/images/success-order.png',
                height: 175,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width - 60,
                  height: 49,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEA3A60),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Detail Pesanan',
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
        ),
      ),
    );
  }
}
