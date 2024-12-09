import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/pages/product_detail/product_detail_page.dart';

class ProductListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // https://picsum.photos/200/300
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProductDetailPage();
            },
          ),
        );
      },
      child: Container(
        height: 120,
        width: double.infinity,
        color: Colors.transparent,
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  'https://picsum.photos/200/300',
                  // height: 120, 여기에 넣어도 적용 제대로 안되기 때문에 Image에 wrap with container 만들어서 위에처럼 사이즈 줘야한다.
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            // Row 안에서 Column 쓸때 Expanded로 크기를 주고 시작해야한다. Row에서 남은공간 다 Column에서 사용할 수 있게.
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '아이폰 팝니다',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '온천동 1분전',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    '100,000원',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        CupertinoIcons.heart,
                        size: 14,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '0',
                        style: TextStyle(
                          fontSize: 12,
                          height: 1, // 폰트 높이
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
