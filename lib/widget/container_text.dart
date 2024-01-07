import 'package:flutter/material.dart';

import '../model/user_model.dart';

class ContainerText extends StatelessWidget {
  const ContainerText({
    super.key,
    required this.user,
    required this.text,
  });

  final UserModel user;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }
}
