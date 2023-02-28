import 'package:datacure/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:datacure/screens/homescreen.dart';
import 'package:auth_buttons/auth_buttons.dart'
    show GoogleAuthButton, AuthButtonStyle, AuthButtonType;
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class InputField_signup extends StatelessWidget {
  const InputField_signup({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              //name
              const SizedBox(
                height: 22,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromRGBO(238, 238, 238, 1)))),
                child: TextFormField(
                  controller: controller.name,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person,
                        size: 25, color: Color(0xff2d3c4e)),
                    fillColor: Colors.grey.shade100,
                    filled: false,
                    labelText: "Name",
                    border: InputBorder.none,
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              //username
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromRGBO(238, 238, 238, 1)))),
                /*
                       
                            */
                child: TextFormField(
                  controller: controller.userName,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.abc_outlined,
                        size: 25, color: Color(0xff2d3c4e)),
                    fillColor: Colors.grey.shade100,
                    filled: false,
                    labelText: 'Username',
                    border: InputBorder.none,
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              //email
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromRGBO(238, 238, 238, 1)))),
                child: TextFormField(
                  controller: controller.email,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.mail_lock_outlined,
                        size: 25, color: Color(0xff2d3c4e)),
                    fillColor: Colors.grey.shade100,
                    filled: false,
                    labelText: 'Email',
                    border: InputBorder.none,
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              //password
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromRGBO(238, 238, 238, 1)))),
                child: TextFormField(
                  controller: controller.password,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock,
                        size: 25, color: Color(0xff2d3c4e)),
                    fillColor: Colors.grey.shade100,
                    filled: false,
                    labelText: 'Password',
                    border: InputBorder.none,
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              //confirm password
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromRGBO(238, 238, 238, 1)))),
                child: TextFormField(
                  controller: controller.password,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock,
                        size: 25, color: Color(0xff2d3c4e)),
                    fillColor: Colors.grey.shade100,
                    filled: false,
                    labelText: 'Confirm Password',
                    border: InputBorder.none,
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              //elevated button
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 90),
                child: ElevatedButton(
                  //child: Button(),
                  //TODO: add logic to this
                  onPressed: () {
                    print('signUp is pressed');
                    print(_formKey.currentState);
                    // if (__formKey.currentState!.validate()) {
                    if (_formKey.currentState != null &&
                        _formKey.currentState!.validate()) {
                      SignUpController.instance.registerUser(
                          controller.email.text.trim(),
                          controller.password.text.trim());
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
                      child: Text('Sign up', style: TextStyle(fontSize: 20.0)),
                    ),
                  ),
                ),
              ),

              //last section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xff2d3c4e),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              //google auth button
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      GoogleAuthButton(
                        themeMode: ThemeMode.light,
                        onPressed: () {},
                        style: const AuthButtonStyle(
                          borderRadius: 40,
                          //splashColor: Color(0xff2d3c4e),
                          buttonColor: Colors.white,
                          //iconBackground: Color(0xff2d3c4e),
                          buttonType: AuthButtonType.secondary,

                          textStyle: TextStyle(
                              color: Color(0xff2d3c4e),
                              fontWeight: FontWeight.bold),
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
        ),
      ),
    );
  }
}
