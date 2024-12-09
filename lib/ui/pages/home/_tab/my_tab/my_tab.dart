import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/pages/home/_tab/my_tab/widgets/my_profile_box.dart';

class MyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MyProfileBox(),
      ],
    );
  }
}
