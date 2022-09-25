import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
