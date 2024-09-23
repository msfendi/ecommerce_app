import 'package:carousel_slider/carousel_slider.dart' as carousel_slider;
import 'package:flutter/material.dart';

class ProductsSlider extends StatefulWidget {
  final List<String> items;
  const ProductsSlider({super.key, required this.items});

  @override
  State<ProductsSlider> createState() => _ProductsSliderState();
}

class _ProductsSliderState extends State<ProductsSlider> {
  int _current = 0;
  final carousel_slider.CarouselController _controller =
      carousel_slider.CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        carousel_slider.CarouselSlider(
          items: widget.items
              .map((e) => Image.asset(
                    e,
                    height: 11.0,
                    // width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ))
              .toList(),
          carouselController: _controller,
          options: carousel_slider.CarouselOptions(
            height: 110,
            autoPlay: true,
            aspectRatio: 11 / 11,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              _current = index;
              setState(() {});
            },
          ),
        ),
        const SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.items.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 20.0 : 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.grey
                            : const Color(0xFFEA3A60))
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
