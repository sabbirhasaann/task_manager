import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AppCarousel extends StatefulWidget {
  final List<Widget> items;
  final double aspectRatio;
  final bool autoPlay;
  final bool enlargeCenterPage;

  const AppCarousel({
    super.key,
    required this.items,
    this.aspectRatio = 16 / 9,
    this.autoPlay = true,
    this.enlargeCenterPage = true,
  });

  @override
  State<AppCarousel> createState() => _AppCarouselState();
}

class _AppCarouselState extends State<AppCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.items,
          options: CarouselOptions(
            aspectRatio: widget.aspectRatio,
            autoPlay: widget.autoPlay,
            enlargeCenterPage: widget.enlargeCenterPage,
            viewportFraction: 0.9,
            onPageChanged: (index, reason) => setState(() => _currentIndex = index),
          ),
        ),
        const SizedBox(height: 8),
        // Standard Dot Indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.items.asMap().entries.map((entry) {
            return Container(
              width: 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor.withOpacity(
                  _currentIndex == entry.key ? 0.9 : 0.2,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}