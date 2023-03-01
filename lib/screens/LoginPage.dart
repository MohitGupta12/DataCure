import 'package:flutter/material.dart';

import '../components/Header.dart';
import '../components/InputWrapper.dart';
import 'package:datacure/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import '../components/InputField.dart';
import 'package:auth_buttons/auth_buttons.dart'
    show GoogleAuthButton, AuthButtonStyle, AuthButtonType;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final _formKey = GlobalKey<FormState>();

    String error = '222';
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
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color.fromRGBO(
                                                238, 238, 238, 1)))),
                                child: TextField(
                                  controller: controller.email,
                                  decoration: const InputDecoration(
                                      hintText: "Enter your email",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color.fromRGBO(
                                                238, 238, 238, 1)))),
                                child: TextField(
                                  controller: controller.password,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: false,
                                      hintText: 'Password',
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
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
                            onPressed: () async {
                              if (_formKey.currentState != null &&
                                  _formKey.currentState!.validate()) {
                                dynamic result = await LoginController.instance
                                    .loginUser(controller.email.text.trim(),
                                        controller.password.text.trim());
                                if (result == null) {
                                  setState(() => error =
                                      'Could not login with given credentials');
                                }

                                print("--------------------------------");
                                print(result);
                                print("--------------------------------");
                                print(error);
                                print("--------------------------------");
                              }
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => const HomeScreen()),
                              // );
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(0, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              backgroundColor: const Color(0xff2d3c4e),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                                child: Text('Login',
                                    style: TextStyle(fontSize: 20.0)),
                              ),
                            ),
                          ),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                        ),
                        const SizedBox(height: 12.0),
                        Text(
                          error,
                          style:
                              const TextStyle(color: Colors.red, fontSize: 14),
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
                                        top: 20,
                                        right: 15,
                                        left: 15,
                                        bottom: 20),
                                    shadowColor: Color(0xff2d3c4e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
