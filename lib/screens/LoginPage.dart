import 'package:flutter/material.dart';

import '../components/Header.dart';
import '../components/InputWrapper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xff2d3c4e),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Header(),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: const InputWrapper(),
            ))
          ],
        ),
      ),
    );
  }
}
