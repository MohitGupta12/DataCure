import 'package:flutter/material.dart';
import 'package:datacure/screens/Home/homescreen.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'InputField.dart';
import 'package:auth_buttons/auth_buttons.dart'
    show GoogleAuthButton, AuthButtonStyle, AuthButtonType;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class InputWrapper extends StatelessWidget {
  const InputWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const InputField(),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 90),

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

            child: ElevatedButton(
              //child: Button(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                backgroundColor: const Color(0xff2d3c4e),
              ),
              child: const Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text('Login', style: TextStyle(fontSize: 20.0)),
                ),
              ),
            ),

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  const SizedBox(height: 20),
                  GoogleAuthButton(
                    themeMode: ThemeMode.light,
                    onPressed: () {},
                    style: const AuthButtonStyle(
                      buttonType: AuthButtonType.icon,
                      iconSize: 35.0,
                      padding: EdgeInsets.only(
                          top: 20, right: 15, left: 15, bottom: 20),
                      shadowColor: Color(0xff2d3c4e),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}






// FacebookAuth.instance.webInitialize(
//   appId: 'your-app-id',
//   cookie: true,
//   xfbml: true,
//   version: 'v12.0',
// );