import 'package:flutter/material.dart';
import 'package:login/components/appBar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Scaffold(
          backgroundColor: const Color(0xff2d3c4e),
          appBar: null,
          body: ListView(
            children: <Widget>[
              Container(
                  color: const Color(0xff2d3c4e),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              right: 20,
                              left: 10,
                            ),
                            child: ListTile(
                              leading: const CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                    'https://i.pravatar.cc/150?img=5'),
                              ),
                              title: const Text(
                                'Sam Reeves',
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff2d3c4e),
                                ),
                              ),
                              subtitle: Text(
                                'sam.reeves@gmail.com',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(height: 20.0),
                        Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const SizedBox(height: 10.0),
                                      // myListTile(),
                                      const ListTile(
                                        leading: Icon(Icons.verified_user),
                                        title: Text(
                                          'My Account',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        // subtitle: Text(
                                        //     'Manage your shared documents'),
                                        trailing: Icon(Icons.arrow_forward_ios),
                                      ),
                                      const ListTile(
                                        leading: Icon(Icons.verified_user),
                                        title: Text(
                                          'Shared Documents',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        // subtitle: Text(
                                        //     'Manage your shared documents'),
                                        trailing: Icon(Icons.arrow_forward_ios),
                                      ),
                                      const ListTile(
                                        leading: Icon(Icons.lock),
                                        title: Text(
                                          'Family Documents',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        // subtitle: Text(
                                        //     'Manage your family documents'),
                                        trailing: Icon(Icons.arrow_forward_ios),
                                      ),
                                      const ListTile(
                                        leading: Icon(Icons.description),
                                        title: Text(
                                          'Two-Factor Authentication',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        // subtitle: Text(
                                        //     'Further secure your account for safely'),
                                        trailing: Icon(Icons.arrow_forward_ios),
                                      ),
                                      const ListTile(
                                        leading: Icon(Icons.logout),
                                        title: Text(
                                          'Log Out',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        // subtitle: Text(
                                        //     'Further secure your account for safety'),
                                        trailing: Icon(Icons.arrow_forward_ios),
                                      ),
                                      const ListTile(
                                        leading: Icon(Icons.settings),
                                        title: Text(
                                          'Settings',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        trailing: Icon(Icons.arrow_forward_ios),
                                      ),
                                      const ListTile(
                                        leading: Icon(Icons.help),
                                        title: Text(
                                          'Help and Support',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        trailing: Icon(Icons.arrow_forward_ios),
                                      ),
                                    ]))),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const SizedBox(height: 10.0),
                                      // myListTile(),

                                      const ListTile(
                                        leading: Icon(Icons.settings),
                                        title: Text(
                                          'Settings',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        trailing: Icon(Icons.arrow_forward_ios),
                                      ),
                                      const ListTile(
                                        leading: Icon(Icons.help),
                                        title: Text(
                                          'Help and Support',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        trailing: Icon(Icons.arrow_forward_ios),
                                      ),
                                    ])))
                      ]))
            ],
          ),
        ));
  }

  // ListTile myListTile(IconData icon, String title, String subTitle) {
  //   return ListTile(
  //     leading: Icon(
  //       icon,
  //       size: 32,
  //       color: Color(0xff2d3c4e),
  //     ),
  //     title: Text(
  //       title,
  //       style: TextStyle(
  //         fontWeight: FontWeight.bold,
  //         color: Color(0xff2d3c4e),
  //       ),
  //     ),
  //     subtitle: Text(
  //       subTitle,
  //       style: TextStyle(color: Colors.grey, fontSize: 14),
  //     ),
  //   );
}
