import 'package:flutter/material.dart';
import 'package:grocery_store/screens/home/banners.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({Key? key, required this.bannerItem}) : super(key: key);

  final BannerItem bannerItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bannerItem.title,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bannerItem.subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    child: const Text(
                      'Find more',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
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
