import 'package:flutter/material.dart';
import 'package:flutter_market_app/core/validator_util.dart';

class PwTextFormField extends StatelessWidget {
  const PwTextFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: "비밀번호를 입력해주세요"),
      obscureText: true, // 비밀번호 안보이게
      validator: ValidatorUtils.validatorPassword,
      controller: controller,
    );
  }
}
