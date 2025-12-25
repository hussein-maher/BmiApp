import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("BMI Calculator",style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),),
      centerTitle: true,
      backgroundColor: Color(0xff24263B),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size. fromHeight(54);
}
