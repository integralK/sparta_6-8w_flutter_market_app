import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/pages/home/home_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final currentIndex = ref.watch(homeViewModel);
        if (currentIndex != 0) {
          return SizedBox();
        }

        return FloatingActionButton.extended(
          onPressed: () {},
          label: Text('상품등록'),
          icon: Icon(Icons.add),
        );
      },
    );
  }
}
