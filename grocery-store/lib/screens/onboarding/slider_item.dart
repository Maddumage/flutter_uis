import 'package:flutter/material.dart';

import 'onboarding_item.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final OnboardingItem item;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(
            child: Text(
              item.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            item.subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}
