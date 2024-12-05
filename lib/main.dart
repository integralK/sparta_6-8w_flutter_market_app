import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/pages/join/join_page.dart';
import 'package:flutter_market_app/ui/pages/welcome/welcome_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
  // flutter pub add flutter_riverpod 설치하고나서 꼭 이거 입력해야함.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        highlightColor: Colors.orange,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            foregroundColor:
                WidgetStatePropertyAll(Colors.white), // 버튼의 글자나 아이콘 색깔
            backgroundColor: WidgetStatePropertyAll(Colors.orange), // 버튼의 바탕색
            minimumSize: WidgetStatePropertyAll(
                Size.fromHeight(50)), // 가로는 최대치로 늘어나고 세로는 설정해준 값만큼만.
            // ElevatedButton의 크기를 늘리려면 컨테이너 사이즈드 박스 위젯으로 감싸줘야 한다!
            textStyle: WidgetStatePropertyAll(
              TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                // 여기까지 입력하고 시뮬레이터 화면 에러뜨는거 같아도 커맨드 시프트 F5 누르면 에러 사라짐.
              ),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    8), // 버튼 모서리 설정 (여기까지 해주고 패팅은 welcome페이지에서 설정해줌)
              ),
            ),
          ),
        ),
        // inputDecorationTheme 속성이 앱 전체 내에서 텍스트필드, 텍스트폼필드에 적용되는 테마를 지정한다!
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 20,
          ), // 텍스트필드, 텍스트폼필드 안에 여백 설정
          border: MaterialStateOutlineInputBorder.resolveWith((states) {
            // 테두리 만들어 주는 것
            // resolveWith 안에 함수를 넘겨줘야 한다. 여기 states의 역할은 텍스트 폼 필드의 상태가 바뀌었을 때마다 이 함수가 실행이 된다.
            // 이 states 파라미터의 타입이 <WidgetState>라는 이넘의 Set이 들어올거다.(마우스 올리면 확인됨)

            // print(states); // 잘 작동되고 있는지 콘솔에서 확인해보기.

            // 1. states Set 안에 WidgetState.focused가 포함이 되어있을 때
            if (states.contains(WidgetState.focused)) {
              return OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 2,
                ),
              );
            }
            // 2. states Set 안에 WidgetState.
            if (states.contains(WidgetState.error)) {
              return OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.red[100]!,
                  // borderSide color에는 null이 올 수 없다. 그러나 red값에서 색상레벨에 따라서 값을 가지고 올때 null일수도 있기때문에 뒤에 ! 넣어줌.
                  width: 2,
                ),
              );
            }
            // 3. 디폴트값
            return OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.grey[300]!,
                // borderSide color에는 null이 올 수 없다. 그러나 red값에서 색상레벨에 따라서 값을 가지고 올때 null일수도 있기때문에 뒤에 ! 넣어줌.
                width: 1,
              ),
            );
          }),
        ),
      ),
      // home: WelcomePage(),
      home: JoinPage(),
    );
  }
}
