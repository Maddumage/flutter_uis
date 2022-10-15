import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class CategoryItem {
  final String title;
  final String imgUrl;

  CategoryItem(this.title, this.imgUrl);
}

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<CategoryItem> itemList = [
    CategoryItem('Vegetables',
        'https://images.unsplash.com/photo-1543362905-bddfadc3d44f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80'),
    CategoryItem('Fruits',
        'https://images.unsplash.com/photo-1517260739337-6799d239ce83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
    CategoryItem('Milk & Eggs',
        'https://images.unsplash.com/photo-1585584563699-0ae01ba660dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80'),
    CategoryItem('Drinks',
        'https://images.unsplash.com/photo-1623157980612-da2c2cdb4c0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=719&q=80'),
    CategoryItem('Meat & Fish',
        'https://images.unsplash.com/photo-1607246749106-0a2b287f7245?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  ];

  @override
  Widget build(BuildContext context) {
    double defaultSize = MediaQuery.of(context).size.width * kDefaultSizeFactor;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: defaultSize * 140,
      padding: EdgeInsets.symmetric(vertical: defaultSize * 8),
      child: ListView.builder(
        itemBuilder: _buildCategoryItem,
        itemCount: itemList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context, int index) {
    double size = MediaQuery.of(context).size.width * 0.2;
    double defaultSize = MediaQuery.of(context).size.width * kDefaultSizeFactor;
    CategoryItem categoryItem = itemList[index];
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: size,
              height: size,
              margin: EdgeInsets.only(right: defaultSize * 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultSize * 8),
                color: Colors.teal,
                image: DecorationImage(
                  image: NetworkImage(categoryItem.imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(defaultSize * 8),
              child: Text(
                categoryItem.title,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: defaultSize * 12,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
