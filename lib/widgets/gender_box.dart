import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isActive;
  final void Function()? onTap;
  const GenderBox({super.key, required this.title, required this.icon, this.isActive=false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isActive? Color(0xffE83D67) : Color(0xff333244),
          ),
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Icon(icon,size: 96,),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
