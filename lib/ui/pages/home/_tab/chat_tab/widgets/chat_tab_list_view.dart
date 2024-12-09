import 'package:flutter/material.dart';

class ChatTabListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          item(),
          item(),
          item(),
        ],
      ),
    );
  }

  Widget item() {
    return Container(
      height: 80,
      child: Row(
        children: [
          UserProfileImage(),
        ],
      ),
    );
  }
}

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      // 동그란 이미지 앱 전체에서 동일하게 두루 쓰이므로 SizedBox에서 extract widget눌러서 UserProfileImage 만들면 위처럼 주절주절 내용 생김.
      dimension: 50,
      /* SizedBox(
         width: 50, height: 50,
         가로 세로 같을때 sizedbox를 그냥 넣는게 아니라 뒤에 .square 생성자를 넣고 
         demension이라는 속성을 넣으면 위에와 같이 가로세로 크기 입력가능 */
      child: ClipRRect(
        // 이것만 해서는 원모양이 잘 안나올수 있고, 위에 sizedbox 만들어서 크기 넣어줘야 함.
        borderRadius: BorderRadius.circular(100),
        child: Image.network(
          'https://picsum.photos/200/300',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
