/* Column
   - Image
   - Text
   - Text
   - ElevatedButton
   - Text
*/

import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/pages/address_search/address_search_page.dart';
import 'package:flutter_market_app/ui/pages/home/home_page.dart';
import 'package:flutter_market_app/ui/pages/login/login_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(), 여기서 앱바는 지워줬다.
      body: SafeArea(
        child: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Spacer(),
                Image.asset(
                  'assets/welcome.png',
                  height: 250,
                ),
                Text(
                  '당신 근처의 마켓',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '동네라서 가능한 모든 것\n지금 내 동네를 선택하고 시작해 보세요.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return AddressSearchPage();
                        },
                      ),
                    );
                  },
                  child: Text('시작하기'),
                ), // ElevatedButton의 스타일을 만들어줘야하는데
                // 앱 전체적으로 버튼 스타일이 통일되어야 하니까 여기서 말고 main.dart로 가서
                // MaterialApp에 theme속성을 이용해서 전체 앱내에서 ElevatedButton 전체 테마를 설정해줘야 한다.
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 50, // 항상 버튼성의 위젯을 사용할때는 최소 터치반경 크기를 44 이상으로 해줄 것!
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: Text(
                      //
                      '이미 계정이 있나요? 로그인', // 이 부분도 버튼처럼 쓰이니까 Container로 만들어서 바꿔줌.
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
