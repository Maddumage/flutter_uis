import 'package:flutter/material.dart';

import '../utils/constants.dart';

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
    double defaultSize = MediaQuery.of(context).size.width * kDefaultSizeFactor;
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: defaultSize * 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w700,
              fontSize: defaultSize * 18,
            ),
          ),
          buttonText != null
              ? TextButton(
                  onPressed: onPress,
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.only(left: defaultSize * 16),
                    minimumSize: Size(defaultSize * 50, defaultSize * 30),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    buttonText!,
                    style: const TextStyle(
                      color: Colors.green,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
