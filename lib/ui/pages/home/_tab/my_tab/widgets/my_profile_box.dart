import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/widgets/user_profile_image.dart';

class MyProfileBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserProfileImage(
          dimension: 50,
          imgUrl: 'https://picsum.photos/200/300',
        ),
        Expanded(
            child: Text(
          '오상구',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ))
      ],
    );
  }
}
