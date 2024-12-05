import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/pages/join/join_page.dart';

class AddressSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // 빈화면 클릭하면 키보드 내려가게 만들어줌
      },
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            onSubmitted: (value) {
              print('onSubmitted $value');
            },
            decoration: InputDecoration(
              hintText: '동명(읍,면)으로 검색 (ex.서초동)',
              contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  // 다른 페이지의 버튼과는 다르게 얘만 조금 사이즈가 작아서 별도로 설정해준다. wrap with sizedbox.
                  onPressed: () {},
                  child: Text('현재 위치로 찾기'),
                ),
              ),
              Expanded(
                // ListView 배치할건데, ListView Column 내에서 쓸때 Expanded로 사이즈 줘야한다.
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return JoinPage();
                        }));
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.transparent, // 버튼처럼 쓰일 텍스트라 이런식으로 만들어줌
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '부산광역시 동래구 온천동',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
