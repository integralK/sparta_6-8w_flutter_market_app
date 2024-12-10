import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailBottomSheet extends StatelessWidget {
  ProductDetailBottomSheet(this.bottomPadding);

  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50 + bottomPadding,
      color: Colors.white,
      child: Column(
        children: [
          Divider(height: 0), // 0으로 설정하면 divide패딩이 사라진다
          Expanded(
            child: Row(
              children: [
                Icon(CupertinoIcons.heart),
              ],
            ),
          ),
          SizedBox(height: bottomPadding),
        ],
      ),
    );
  }
}
