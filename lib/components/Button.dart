import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 90),
      decoration: BoxDecoration(
        color: const Color(0xff2d3c4e),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "Login",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
