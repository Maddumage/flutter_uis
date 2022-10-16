import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    this.iconSrc = 'assets/icons/bell.svg',
    required this.onPress,
    this.isLeft = false,
    this.iconColor,
  }) : super(key: key);

  final String iconSrc;
  final Function() onPress;
  final bool isLeft;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    double defaultSize = MediaQuery.of(context).size.width * kDefaultSizeFactor;
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          right: isLeft ? 0 : defaultSize * 20,
          top: 0,
          bottom: 0,
          left: isLeft ? defaultSize * 20 : 0,
        ),
        width: defaultSize * 40,
        height: defaultSize * 40,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(defaultSize * kDefaultBorderRadius),
          ),
          shadows: const [kIconButtonShadow],
        ),
        child: IconButton(
          icon: SvgPicture.asset(
            iconSrc,
            color: iconColor ?? Colors.deepOrange.shade400,
          ),
          color: Colors.white,
          onPressed: onPress,
        ),
      ),
    );
  }
}
