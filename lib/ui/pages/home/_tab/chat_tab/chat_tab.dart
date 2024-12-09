import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/pages/home/_tab/chat_tab/widgets/chat_tab_app_bar.dart';
import 'package:flutter_market_app/ui/pages/home/_tab/chat_tab/widgets/chat_tab_list_view.dart';

class ChatTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      // chat tab의 크기를 무한히 확장해준다.
      child: Column(
        children: [
          ChatTabAppBar(),
          ChatTabListView(),
        ],
      ),
    );
  }
}
