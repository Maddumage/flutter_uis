import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const kAccentColor = Color(0xFF3EC759);
const kLightIconColor = Color(0xFFE4F3EA);
const kLightAccentColor = Color(0xFFE5F4EA);
const kBoxShadowColor = Color(0xFFD9DEEA);

// box shadow
const kBoxShadow = BoxShadow(
  color: kBoxShadowColor,
  blurRadius: 40,
  spreadRadius: -5,
);

const kDefaultSizeFactor = 0.0024;
const kDefaultBorderRadius = 8.0;

const kIconButtonShadow = BoxShadow(
  offset: Offset(0, 5),
  spreadRadius: -10,
  blurRadius: 15,
  color: Colors.black45,
);

const kLightSystemOverlayStyle = SystemUiOverlayStyle(
// Status bar color
  statusBarColor: Colors.white,
// Status bar brightness (optional)
  statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
  statusBarBrightness: Brightness.light, // For iOS (dark icons)
  systemNavigationBarColor: Colors.white,
  systemNavigationBarDividerColor: Colors.white,
  systemNavigationBarIconBrightness: Brightness.dark,
);
