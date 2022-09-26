import 'package:flutter/material.dart';
import 'package:grocery_store/screens/productdetails/product_details_custom_clip_path.dart';
import 'package:grocery_store/utils/constants.dart';

import '../../components/flat_button.dart';
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
      body: Stack(
        children: [
          Container(
            width: w,
            height: MediaQuery.of(context).size.height,
            color: Colors.teal,
            padding: EdgeInsets.only(top: w * 0.3),
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/apple.png',
              width: w * 0.5,
            ),
          ),
          Positioned(
            top: w * 0.75,
            left: w * 0.3,
            right: w * 0.3,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: kLightAccentColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('\$232'), Text('/kg')],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipPath(
              clipper: ProductDetailsCustomClipPath(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.85,
                color: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: w * 0.85 - 200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      title: 'Get Started',
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const App()),
                        );
                      },
                    ),
                    FlatButton(
                      title: 'Get Started',
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const App()),
                        );
                      },
                    ),
                    FlatButton(
                      title: 'Get Started',
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const App()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
