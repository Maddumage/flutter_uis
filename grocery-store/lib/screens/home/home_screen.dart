import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store/screens/home/banners.dart';
import 'package:grocery_store/screens/home/categories.dart';
import 'package:grocery_store/screens/home/popular_items.dart';
import 'package:grocery_store/screens/home/search_bar.dart';
import 'package:grocery_store/screens/productdetails/product_details.dart';

import '../../components/section_title.dart';
import '../../utils/constants.dart';

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
    double defaultSize = MediaQuery.of(context).size.width * kDefaultSizeFactor;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: defaultSize * 8),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/dot_menu.svg',
              width: defaultSize * 24,
              height: defaultSize * 24,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: defaultSize * 8),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/bell.svg',
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          //search bar
          SliverToBoxAdapter(child: SearchBar(controller: _controller)),
          // banners
          const SliverToBoxAdapter(child: Banners()),
          // categories
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultSize * 20),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: 'Categories',
                onPress: () {},
                buttonText: 'See all',
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: defaultSize * 20),
            sliver: const SliverToBoxAdapter(child: Categories()),
          ),
          //popular items
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultSize * 20),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: 'Popular',
                onPress: () {},
                buttonText: 'See all',
              ),
            ),
          ),
          PopularItems(
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductDetails(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
