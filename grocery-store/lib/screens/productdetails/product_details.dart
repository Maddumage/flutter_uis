import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grocery_store/components/section_title.dart';
import 'package:readmore/readmore.dart';

import '../../components/flat_button.dart';
import '../../utils/constants.dart';
import '../app.dart';
import '../home/categories.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    double defaultSize = MediaQuery.of(context).size.width * kDefaultSizeFactor;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                top: defaultSize * 250,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height:
                      MediaQuery.of(context).size.height - defaultSize * 100,
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    top: defaultSize * 150,
                    left: defaultSize * 20,
                    right: defaultSize * 20,
                    bottom: defaultSize * 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const ProductTitleBar(),
                      SizedBox(
                        height: defaultSize * 8,
                      ),
                      const SectionTitle(title: 'Descriptions'),
                      ReadMoreText(
                        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
                        trimLines: 3,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Read less',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500,
                          fontSize: defaultSize * 12,
                        ),
                        moreStyle: TextStyle(
                          fontSize: defaultSize * 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                        lessStyle: TextStyle(
                          fontSize: defaultSize * 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        height: defaultSize * 8,
                      ),
                      const SectionTitle(title: 'Similar Products'),
                      const Categories(),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: ClipPath(
                  clipper: HeaderClipper(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: defaultSize * 350,
                    color: const Color(0xFFF9F0E8),
                    padding: EdgeInsets.only(top: defaultSize * 100),
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/apple.png',
                      width: defaultSize * 200,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: defaultSize * 320,
                left: defaultSize * 120,
                right: defaultSize * 120,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    vertical: defaultSize * 8,
                    horizontal: defaultSize * 20,
                  ),
                  decoration: BoxDecoration(
                    color: kLightAccentColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$232',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: defaultSize * 18,
                        ),
                      ),
                      Text(
                        '/kg',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: defaultSize * 14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                height: defaultSize * 100,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.only(left: defaultSize * 20),
                  decoration: const BoxDecoration(
                    boxShadow: [kBoxShadow],
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: defaultSize * 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: defaultSize * 4,
                          ),
                          Text(
                            '\$120.50',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: defaultSize * 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      FlatButton(
                        title: 'Add Cart',
                        width: defaultSize * 150,
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const App(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductTitleBar extends StatelessWidget {
  const ProductTitleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = MediaQuery.of(context).size.width * kDefaultSizeFactor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fresh Natural Orange',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: defaultSize * 20,
              ),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBar.builder(
                  initialRating: 4.4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: defaultSize * 20,
                  unratedColor: Colors.grey.shade500,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: defaultSize * 10,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Text(
                  '(4.4)',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w500,
                    fontSize: defaultSize * 14,
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: defaultSize * 30,
              height: defaultSize * 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultSize * 8),
                color: Colors.green,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.remove,
                  size: defaultSize * 14,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultSize * 4),
              child: Text(
                '2 Kg',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: defaultSize * 14,
                ),
              ),
            ),
            Container(
              width: defaultSize * 30,
              height: defaultSize * 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultSize * 8),
                color: Colors.green,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  size: defaultSize * 14,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    var path = Path();
    double d = h * 0.4;

    path.moveTo(0, 0);
    path.lineTo(0, d);
    path.quadraticBezierTo(0, h, w * 0.5, h);
    path.quadraticBezierTo(w, h, w, d);
    path.lineTo(w, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
