import 'package:flutter/material.dart';
import 'package:flutter_market_app/core/snackbar_util.dart';

class HomeTabAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // bottom 속성 사용x => Scaffold의 appBar사용 가능.
    return AppBar(
      title: Text('온천동'),
      actions: [
        GestureDetector(
          onTap: () {
            SnackbarUtil.showSnackBar(context, '준비중입니다.');
            // 여기에 스낵바 만들었다가 core폴더에 옮기고 여긴 이렇게만 적음
          },
          child: Container(
            width: 50,
            height: 50,
            color: Colors.transparent,
            child: Icon(Icons.search),
          ),
        )
      ],
    );
  }
}
