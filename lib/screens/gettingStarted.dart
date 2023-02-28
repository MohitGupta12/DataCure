import 'package:flutter/material.dart';
//import 'package:login/components/Header2.dart';
import 'package:datacure/screens/LoginPage.dart';
import 'package:datacure/screens/Signup.dart';

import '../components/Header.dart';

//import '../components/InputWrapper.dart';
class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
            Container(
              height: size.height * 0.4,
              margin: EdgeInsets.only(left: 15),
              child: Column(
                children: <Widget>[
                  Row(
                    children: const [
                      Text(
                        'Innovating',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "Healthcare",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 44,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "one ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                      Text(
                        "BlockChain",
                        style: TextStyle(
                            color: Color.fromARGB(255, 37, 113, 255),
                            fontSize: 44,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "at a TIME.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                //child: const InputWrapper(),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 60),
                      child: ElevatedButton(
                        //child: Button(),

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          minimumSize: const Size(0, 5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          backgroundColor: const Color(0xff2d3c4e),
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 1.0),
                            child: Text('Get Started',
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 60),
                      child: ElevatedButton(
                        //child: Button(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          minimumSize: const Size(0, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          backgroundColor:
                              const Color.fromARGB(255, 155, 200, 255),
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 20.0),
                            child: Text('Login',
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: const Color(0xff2d3c4e),
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
