import 'package:flutter/material.dart';
import 'package:grocery_store/screens/home/banners.dart';

import '../../utils/constants.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({Key? key, required this.bannerItem}) : super(key: key);

  final BannerItem bannerItem;

  @override
  Widget build(BuildContext context) {
    double defaultSize = MediaQuery.of(context).size.width * kDefaultSizeFactor;
    return Container(
      margin: EdgeInsets.only(right: defaultSize * 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultSize * 8),
        image: DecorationImage(
          image: NetworkImage(bannerItem.imgUrl),
          fit: BoxFit.cover,
        ),
        color: Colors.grey.shade50,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(defaultSize * 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bannerItem.title,
                    style: TextStyle(
                      fontSize: defaultSize * 18,
                      color: Colors.teal.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bannerItem.subtitle,
                    style: TextStyle(
                      fontSize: defaultSize * 12,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    child: Text(
                      'Find more',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: defaultSize * 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
