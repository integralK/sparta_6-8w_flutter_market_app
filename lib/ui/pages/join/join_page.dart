import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/widgets/id_text_form_field.dart';
import 'package:flutter_market_app/ui/widgets/nickname_text_form_field.dart';
import 'package:flutter_market_app/ui/widgets/pw_text_form_field.dart';

class JoinPage extends StatefulWidget {
  @override
  State<JoinPage> createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  final idController = TextEditingController();
  final pwController = TextEditingController();
  final nicknameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    idController.dispose();
    pwController.dispose();
    nicknameController.dispose();
    super.dispose();
  }

  void onImageUpload() {
    print('onImageUpload');
  }

  void onJoin() {
    formKey.currentState?.validate();
    // 이 부분까지 입력해줘야 회원가입 버튼 눌렀을때 오류?메세지 제대로 뜬다.(validation 잘 작동한다)
    print('onJoin');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // 이거 넣어주는거 잊지말기!
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Form(
          key: formKey,
          child: ListView(
            // 위젯들이 세로로 배치가 되는데 텍스트필드, 텍스트폼필드가 들어가니까 ListView 사용해주면 된다.
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              Text(
                '안녕하세요!\n아이디와 비밀번호로 가입해주세요.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: onImageUpload,
                // 여기에 나중에 코드가 길어질수가 있어서 위에 별도로 onImageUpload 메서드 정의해서 넘겨주고 이렇게 onImageUpload로 불러온다.
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle, // 동그란 컨테이너 만들때 shape 속성 이용하면 된다.
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // 세로 중앙정렬 만들어줌
                    children: [
                      Icon(
                        Icons.person,
                        size: 30,
                      ),
                      SizedBox(height: 2),
                      Text(
                        '프로필 사진',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              IdTextFormField(controller: idController),
              SizedBox(height: 20),
              PwTextFormField(controller: pwController),
              SizedBox(height: 20),
              NicknameTextFormField(controller: nicknameController),
              SizedBox(height: 20),
              ElevatedButton(
                // 이것도 여기에 코드 길어지면 안좋으니까 위에 onJoin 메서드 만들어놓고 이렇게 부른다.
                onPressed: onJoin,
                child: Text('회원가입'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
