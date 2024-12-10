import 'package:flutter/material.dart';

class ProductDetailPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // PageView를 감싸는 부모위젯의 크기가 항상 있어야 한다!!!
      height: 500,
      child: PageView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Image.network(
            'https://picsum.photos/200/300',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
