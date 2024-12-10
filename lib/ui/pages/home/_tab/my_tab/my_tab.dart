import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_market_app/core/snackbar_util.dart';
import 'package:flutter_market_app/ui/pages/home/_tab/my_tab/widgets/my_profile_box.dart';

class MyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        // home_page.dart 확인해보면 앱바가 없다. 그래서 패딩넣었을때 위로 붙듯이 보임.
        // wrap with widget으로 safearea 만들어주면 정상적으로 밑으로 내려와서 괜찮아진다.
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          MyProfileBox(),
          SizedBox(height: 8),
          lable('나의 거래'),
          item(text: '관심목록', icon: CupertinoIcons.heart),
          item(text: '판매내역', icon: CupertinoIcons.square_list),
          item(text: '구매내역', icon: CupertinoIcons.bag),
          item(text: '중고거래 가계부', icon: CupertinoIcons.book),
          Divider(),
          lable('나의 소식'),
          item(text: '이벤트', icon: CupertinoIcons.gift),
          item(text: '공지사항', icon: CupertinoIcons.news),
          Divider(),
          lable('기타'),
          item(text: '내 동네 설정', icon: Icons.location_on_outlined),
          item(text: '동네 인증하기', icon: Icons.gps_not_fixed),
          Divider(),
          item(text: '자주 묻는 질문'),
          item(text: '약관 및 정책'),
        ],
      ),
    );
  }

  Widget lable(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget item({
    required String text,
    IconData? icon,
  }) {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          SnackbarUtil.showSnackBar(context, '준비중 입니다.');
          // context 부분에 빨간에러표시 뜨는데 context 필요하니까 GestureDetector를 wrap with builder로 감싸줘서 만들어주면 됨.
        },
        child: Container(
          height: 40,
          color: Colors.transparent,
          child: Row(
            children: [
              if (icon != null) ... // 스프레드 연산자
                [
                // icon이 null이 아닐때만 이렇게 풀어주라고 명령하는거임
                Icon(icon),
                SizedBox(width: 8),
              ],
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
