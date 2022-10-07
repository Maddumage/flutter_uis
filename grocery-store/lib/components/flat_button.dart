import 'package:flutter/material.dart';

class FlatButton extends StatelessWidget {
  const FlatButton(
      {Key? key,
      required this.title,
      required this.onPress,
      this.width,
      this.height})
      : super(key: key);
  final String title;
  final Function() onPress;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        height: height ?? 48,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green,
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
