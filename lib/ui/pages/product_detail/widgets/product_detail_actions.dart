import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/pages/product_write/product_write_page.dart';

class ProductDetailActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO 자신의 글이 아니면 보여주지 않기!
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            print('삭제버튼 터치됨');
          },
          child: Container(
            // 아이콘 컨테이너로 감싸서 사이즈 주는것 잊지말기!
            width: 50,
            height: 50,
            color: Colors.transparent,
            child: Icon(Icons.delete),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ProductWritePage();
                },
              ),
            );
          },
          child: Container(
            // 아이콘 컨테이너로 감싸서 사이즈 주는것 잊지말기!
            width: 50,
            height: 50,
            color: Colors.transparent,
            child: Icon(Icons.edit),
          ),
        ),
      ],
    );
  }
}
