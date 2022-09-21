import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/screens/onboarding/slider_item.dart';

import 'onboarding_item.dart';

class OnboardingSlider extends StatefulWidget {
  const OnboardingSlider({Key? key}) : super(key: key);

  @override
  State<OnboardingSlider> createState() => _OnboardingSliderState();
}

class _OnboardingSliderState extends State<OnboardingSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<OnboardingItem> itemList = [
    OnboardingItem('Let\'s find the best &\nhealthy Grocery',
        'Online food delivery - Quick and\neasy to find grocery'),
    OnboardingItem('Let\'s find the best &\nhealthy Grocery',
        'Online food delivery - Quick and\neasy to find grocery'),
    OnboardingItem('Let\'s find the best &\nhealthy Grocery',
        'Online food delivery - Quick and\neasy to find grocery')
  ];

  Widget _buildItem(OnboardingItem item) {
    return SliderItem(item: item);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: itemList.map((e) => _buildItem(e)).toList(),
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 1,
            onPageChanged: (index, item) {
              setState(() {
                _current = index;
              });
            },
          ),
          carouselController: _controller,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: itemList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 30.0 : 15.0,
                height: 6.0,
                margin: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 2.0,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6),
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.green)
                      .withOpacity(
                    _current == entry.key ? 0.9 : 0.4,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
