import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/pages/home/_tab/home_tab/widgets/product_list_item.dart';

class HomeTabListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        padding: EdgeInsets.symmetric(
          // 이거 넣으니 리스트아이템 윗쪽으로 조금 올라옴
          horizontal: 20,
          vertical: 10,
        ),
        itemBuilder: (context, index) {
          return ProductListItem();
        },
        separatorBuilder: (context, index) {
          return Divider(height: 20); // 위젯들 나눌때 선넣는 위젯
        },
      ),
    );
  }
}
