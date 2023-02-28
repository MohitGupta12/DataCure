// ignore: file_names
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color.fromRGBO(238, 238, 238, 1)))),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail, size: 25, color: Color(0xff2d3c4e)),
              labelText: "Email",
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
              labelStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color.fromRGBO(238, 238, 238, 1)))),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock, size: 25, color: Color(0xff2d3c4e)),
              fillColor: Colors.grey.shade100,
              filled: false,
              labelText: 'Password',
              border: InputBorder.none,
              labelStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
