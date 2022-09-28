import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    this.buttonText,
    this.onPress,
  }) : super(key: key);

  final String title;
  final String? buttonText;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          TextButton(
            onPressed: onPress,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(left: 16),
              minimumSize: const Size(50, 30),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              buttonText ?? '',
              style: const TextStyle(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
