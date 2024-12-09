import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/widgets/user_profile_image.dart';

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
          UserProfileImage(
            dimension: 50,
            imgUrl: 'https://picsum.photos/200/300',
          ),
        ],
      ),
    );
  }
}
