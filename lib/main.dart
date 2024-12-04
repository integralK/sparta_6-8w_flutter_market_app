import 'package:flutter/material.dart';
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
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          // 텍스트필드, 텍스트폼필드 안에 여백 설정
        ),
      ),
      home: WelcomePage(),
    );
  }
}
