import 'package:flutter/material.dart';
import 'package:datacure/components/InputField_signup.dart';
import '../components/Header.dart';
import '../components/InputWrapper.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xff2d3c4e),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 35,
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
              child: const InputField_signup(),
            ))
          ],
        ),
      ),
    );
  }
}
