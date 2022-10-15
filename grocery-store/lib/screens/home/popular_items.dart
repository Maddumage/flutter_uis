import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class PopularItems extends StatefulWidget {
  const PopularItems({Key? key, required this.onPress}) : super(key: key);

  final Function() onPress;

  @override
  State<PopularItems> createState() => _PopularItemsState();
}

class _PopularItemsState extends State<PopularItems> {
  @override
  Widget build(BuildContext context) {
    double defaultSize = MediaQuery.of(context).size.width * kDefaultSizeFactor;
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 20),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: defaultSize * 200.0,
          mainAxisSpacing: defaultSize * 10.0,
          crossAxisSpacing: defaultSize * 10.0,
          childAspectRatio: 0.75,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                widget.onPress();
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultSize * 8),
                  boxShadow: const [
                    kBoxShadow,
                  ],
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/apple.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: defaultSize * 4,
                      left: defaultSize * 4,
                      right: defaultSize * 4,
                      child: Container(
                        height: defaultSize * 50,
                        padding: EdgeInsets.only(
                          top: defaultSize * 8,
                          left: defaultSize * 8,
                          bottom: defaultSize * 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(defaultSize * 8),
                          color: kLightAccentColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Apple',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '\$3.25/kg',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.normal,
                                      fontSize: defaultSize * 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: defaultSize * 30,
                              height: defaultSize * 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(defaultSize * 10),
                                  bottomLeft: Radius.circular(defaultSize * 10),
                                ),
                                color: kAccentColor,
                              ),
                              child: Icon(
                                Icons.add,
                                color: kLightIconColor,
                                size: defaultSize * 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          childCount: 4,
        ),
      ),
    );
  }
}
