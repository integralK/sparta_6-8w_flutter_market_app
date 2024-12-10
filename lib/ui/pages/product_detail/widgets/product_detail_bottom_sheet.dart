import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/pages/chat_detail/chat_detail_page.dart';

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
                GestureDetector(
                  onTap: () {
                    print('하트 터치됨');
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.transparent,
                    child: Icon(CupertinoIcons.heart),
                  ),
                ),
                VerticalDivider(
                  width: 20,
                  indent: 10, // 세로 디바이더의 높이 윗부분 조절
                  endIndent: 10, // 세로 디바이더의 높이 아랫부분 조절 (패딩개념?)
                  color: Colors.grey,
                ),
                Expanded(
                  child: Text(
                    '100,000원',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  // ElevatedButton의 사이즈를 조절해서 만들기위해 이렇게 하는거!
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ChatDetailPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      '채팅하기',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20), // 버튼 우측에 여백 좀 만들려고
              ],
            ),
          ),
          SizedBox(height: bottomPadding),
        ],
      ),
    );
  }
}
