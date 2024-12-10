import 'package:flutter/material.dart';
import 'package:flutter_market_app/core/validator_util.dart';

class IdTextFormField extends StatelessWidget {
  const IdTextFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: "아이디를 입력해주세요"),
      validator: ValidatorUtil.validatorId,
      controller: controller,
    );
  }
}
