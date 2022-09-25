import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/screens/home/banner_card.dart';

class BannerItem {
  final String title;
  final String subtitle;
  final String imgUrl;

  BannerItem(this.title, this.subtitle, this.imgUrl);
}

class Banners extends StatefulWidget {
  const Banners({Key? key}) : super(key: key);

  @override
  State<Banners> createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<BannerItem> itemList = [
    BannerItem('Up to 30% offers', 'Enjoy our big offer of\nevery day',
        'https://images.unsplash.com/photo-1490818387583-1baba5e638af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80'),
    BannerItem('Always fresh foods', 'Enjoy our fresh and healthy foods',
        'https://images.unsplash.com/photo-1457347876270-97799484c564?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80')
  ];

  Widget _buildItem(BannerItem item) {
    return BannerCard(bannerItem: item);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 8,
      ),
      child: Column(
        children: [
          CarouselSlider(
            items: itemList.map((e) => _buildItem(e)).toList(),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: false,
              viewportFraction: 0.95,
              aspectRatio: 2.5,
              initialPage: 1,
              disableCenter: true,
              onPageChanged: (index, item) {
                setState(() {
                  _current = index;
                });
              },
            ),
            carouselController: _controller,
          ),
        ],
      ),
    );
  }
}
