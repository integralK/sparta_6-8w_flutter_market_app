import 'package:flutter/material.dart';

class ProductWritePictureArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // 가로방향 리스트뷰 사용할때 height 꼭 줘야한다. 그래서 SizedBox로 감싸줘야함.
      height: 60,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal, // 가로 방향으로 진행된다.
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              // 사진 모서리 둥글게할때
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                'https://picsum.photos/200/300',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              // TODO 사진업로드 구현하기
              print('사진업로드');
            },
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                    ),
                    Text(
                      '0/10',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
