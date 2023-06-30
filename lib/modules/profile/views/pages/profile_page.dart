import 'package:flutter/material.dart';
import 'package:textless/textless.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(child: "Profile".text,),
    );
  }
}
