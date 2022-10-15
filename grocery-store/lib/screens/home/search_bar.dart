import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    double defaultSize = MediaQuery.of(context).size.width * kDefaultSizeFactor;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: defaultSize * 20, vertical: defaultSize * 8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: defaultSize * 50,
              margin: EdgeInsets.only(right: defaultSize * 20),
              padding: EdgeInsets.all(defaultSize * 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(defaultSize * 8),
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
            height: defaultSize * 50,
            width: defaultSize * 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(defaultSize * 8),
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
