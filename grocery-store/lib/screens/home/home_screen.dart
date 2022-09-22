import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/dot_menu.svg',
            width: 24,
            height: 24,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/bell.svg',
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          //search bar
          SearchBar(controller: _controller),
          // banners

          // categories

          //popular items
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 1,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: TextField(
                controller: _controller,
                textAlign: TextAlign.start,
                maxLines: 1,
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.search_sharp,
                  ),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 1,
                  blurRadius: 15,
                ),
              ],
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/filter.svg',
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
