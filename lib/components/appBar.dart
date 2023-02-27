// ignore: file_names
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  MyAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xff2d3c4e),
      shadowColor: null,
      title: Text(title),
      elevation: 0,
      // Other customizations such as actions or background color can be added here
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
