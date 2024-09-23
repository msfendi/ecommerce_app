import 'package:ecommerce/pages/home/checkout_page.dart';
import 'package:ecommerce/pages/home/detail_order_page.dart';
import 'package:ecommerce/pages/home/detail_page.dart';
import 'package:ecommerce/pages/home/successed_order.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home/home_page.dart';
import 'home/table_page.dart';

class DashboardPage extends StatefulWidget {
  final int currentTab;
  const DashboardPage({Key? key, required this.currentTab}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late int _selectedIndex;
  final List<Widget> _pages = [
    // const HomePage(),
    // const SearchPage(),
    const HomePage(),
    const DetailPage(),
    // const Center(
    //   child: Text('This Page 2'),
    // ),
    // const Center(
    //   child: Text('This Page 3'),
    // ),
    const CheckoutPage(),
    const DetailOrderPage(),
    const SuccessedOrder()
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  void initState() {
    _selectedIndex = widget.currentTab;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFEA3A60),
        unselectedItemColor: const Color(0xFF8E8E93),
        selectedLabelStyle: GoogleFonts.plusJakartaSans(
            color: const Color(0xFFEA3A60),
            height: 14 / 100,
            fontWeight: FontWeight.w600,
            fontSize: 12),
        unselectedLabelStyle: GoogleFonts.plusJakartaSans(
            color: const Color(0xFF8E8E93),
            height: 14 / 100,
            fontWeight: FontWeight.w600,
            fontSize: 12),
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ImageIcon(
                AssetImage('assets/icons/Home.png'),
                size: 24,
              ),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ImageIcon(
                AssetImage('assets/icons/Home.png'),
                size: 24,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Pesan',
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ImageIcon(
                AssetImage('assets/icons/Chat.png'),
                size: 24,
              ),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ImageIcon(
                AssetImage('assets/icons/Chat.png'),
                size: 24,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ImageIcon(
                AssetImage('assets/icons/Scan.png'),
                size: 40,
              ),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ImageIcon(
                AssetImage('assets/icons/Scan.png'),
                size: 40,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Wishlist',
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ImageIcon(
                AssetImage('assets/icons/Heart.png'),
                size: 24,
              ),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ImageIcon(
                AssetImage('assets/icons/Heart.png'),
                size: 24,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ImageIcon(
                AssetImage('assets/icons/Profile.png'),
                size: 24,
              ),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ImageIcon(
                AssetImage('assets/icons/Profile.png'),
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
