import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../components/flat_button.dart';
import '../../utils/constants.dart';
import '../app.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: w,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                top: w * 0.4,
                child: Container(
                  width: w,
                  height: MediaQuery.of(context).size.height - w * 0.4,
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    top: w * 0.6,
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Fresh Natural Orange',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
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
                                    itemSize: 20,
                                    unratedColor: Colors.grey.shade500,
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 10,
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
                                      fontSize: 14,
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
                                width: 40,
                                height: 40,
                                padding: const EdgeInsets.all(4),
                                alignment: Alignment.center,
                                decoration: const ShapeDecoration(
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(),
                                ),
                                child: Center(
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.remove,
                                      size: 20,
                                    ),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              Text(
                                '/kg',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(4),
                                alignment: Alignment.center,
                                decoration: const ShapeDecoration(
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(),
                                ),
                                child: Center(
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.add,
                                      size: 20,
                                    ),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      FlatButton(
                        title: 'Get Started',
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const App()),
                          );
                        },
                      ),
                      FlatButton(
                        title: 'Get Started',
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const App()),
                          );
                        },
                      ),
                      FlatButton(
                        title: 'Get Started',
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const App()),
                          );
                        },
                      ),
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
                    width: w,
                    height: w * 0.9,
                    color: Colors.teal,
                    padding: EdgeInsets.only(top: w * 0.3),
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/apple.png',
                      width: w * 0.5,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: w * 0.85,
                left: w * 0.35,
                right: w * 0.35,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: kLightAccentColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '\$232',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '/kg',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      )
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
