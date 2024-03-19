import 'package:ecommerce/pages/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: ListView(
          children: [
            const SizedBox(
              height: 90,
            ),
            Image.asset(
              'assets/icons/nutup.png',
              height: 100,
            ),
            const SizedBox(
              height: 35,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome Back',
                  style: GoogleFonts.urbanist(
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 35,
                      height: 44.5 / 100),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Please enter your email and Password',
                  style: GoogleFonts.urbanist(
                      color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      height: 25.5 / 100),
                ),
              ],
            ),
            const SizedBox(
              height: 67,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email Address',
                  style: GoogleFonts.urbanist(
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      height: 21.5 / 100),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(12),
                    hintText: 'Danillapuspa@gmail.com',
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
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: GoogleFonts.urbanist(
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      height: 21.5 / 100),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(12),
                    hintText: 'Enter Your Password',
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
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text(
                  'Forgot Password ? ',
                  style: GoogleFonts.urbanist(
                      color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 17 / 100),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Here',
                    style: GoogleFonts.urbanist(
                        color: const Color(0xFFEA3A60),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 17 / 100),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const DashboardPage(
                              currentTab: 0,
                            )),
                    (route) => false);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 49,
                decoration: BoxDecoration(
                  color: const Color(0xFFEA3A60),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: GoogleFonts.urbanist(
                        height: 21.5 / 100,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account yet ? ',
                  style: GoogleFonts.urbanist(
                      color: const Color(0xFF3C3C43).withOpacity(60 / 100),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 17 / 100),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.urbanist(
                        color: const Color(0xFFEA3A60),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 17 / 100),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
