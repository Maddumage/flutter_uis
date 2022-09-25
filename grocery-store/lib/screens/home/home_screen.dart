import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store/screens/home/banners.dart';
import 'package:grocery_store/screens/home/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/dot_menu.svg',
              width: 24,
              height: 24,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/bell.svg',
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          //search bar
          SearchBar(controller: _controller),
          // banners
          const Banners(),
          // categories

          //popular items
        ],
      ),
    );
  }
}
