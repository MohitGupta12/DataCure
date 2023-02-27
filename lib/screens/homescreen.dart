import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'package:login/screens/profilescreen.dart';

import 'lockerscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreenBody(),
    const LockerPage(),
    Container(
      color: Colors.green,
    ),
    const ProfilePage(),
  ];
  bool showFAB = true;

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff2d3c4e),
      appBar: AppBar(
        leading: const Icon(Icons.access_alarm),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff2d3c4e),
        elevation: 0,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {
        //     //side menu stuff
        //   },
        // ),

        //icon for appbar
        //leading: Icon(Icons.),
        title: const Text(
          'Datacure',
          style: TextStyle(fontSize: 32),
        ),
      ),

      body: _widgetOptions.elementAt(_selectedIndex),
      // ignore: prefer_const_constructors

//camera scanner button laga dia h visibility on profile page ka issue h abhi
      floatingActionButton: Visibility(
        visible: showFAB,
        child: FloatingActionButton(
          elevation: 10,

          //shape: CircleBorder(),
          backgroundColor: const Color(0xff2d3c4e),
          child: const Icon(Icons.document_scanner_outlined),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,

      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [Icons.home, Icons.lock, Icons.description, Icons.person],
        //   icons: iconList,
        activeIndex: _selectedIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,

        leftCornerRadius: 32,
        rightCornerRadius: 32,
        inactiveColor: Colors.grey,
        activeColor: const Color(0xff2d3c4e),
        onTap: (index) => setState(() => _selectedIndex = index),
        //other params
      ),
    );
  }
}

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  _HomeScreenBodyState createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  //drop down ke listing members
  List<String> items = ['Yuri Boyka', 'Rocky Balboa', 'IP Man'];
  String? selectedItem = 'Yuri Boyka';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.2,
          child: Stack(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 10,
                      ),
                      child: Text(
                        'Hi, Yuri',
                        style: TextStyle(
                          backgroundColor: Color.fromARGB(0, 255, 193, 7),
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    majorDivider(),
                  ],
                ),
              ),
              Positioned(
                bottom: 34, right: 30,
                left: 30,
                //drop down wala box

                child: DropDownHomeScreen(),
              ),
            ],
          ),
        ),

        // upar h sara header with drop down
        majorDivider(),
        const SizedBox(
          height: 20,
        ),
        //recent documents wala text
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TitleRecents(
                text: "Recent Documents",
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        const RecentScrollMenu(),
        majorDivider(),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TitleRecents(
                text: "Family Members",
              ),
            ),
          ],
        ),
        const FamilyScrollMenu(),
      ],
    );
  }

//ye method bna hua h drop down ka joh home screen pr h
  // ignore: non_constant_identifier_names
  Container DropDownHomeScreen() {
    return Container(
      margin: const EdgeInsets.only(
        top: 50,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.white,
        ),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0xff2d3c4e),
            spreadRadius: 0,
            blurRadius: 7,
            offset: Offset(3, 3),
          )
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.person, size: 24, color: Color(0xff2d3c4e)),
          const SizedBox(width: 8),
          Container(
            height: 24,
            width: 1,
            color: const Color(0xff2d3c4e),
            margin: const EdgeInsets.symmetric(horizontal: 8),
          ),
          Expanded(
            child: DropdownButton<String>(
              isExpanded: true,
              value: selectedItem,
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(
                color: Color(0xff2d3c4e),
                fontSize: 14,
              ),
              underline: Container(
                height: 0,
                color: Colors.transparent,
              ),
              onChanged: (String? item) {
                setState(() {
                  selectedItem = item;
                });
              },
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class FamilyScrollMenu extends StatelessWidget {
  const FamilyScrollMenu({super.key});

  static const male_icon = Icon(
    Icons.male_outlined,
    color: Color(0xff2d3c4e),
  );

  static const female_icon = Icon(
    Icons.female_outlined,
    color: Color(0xff2d3c4e),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        right: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 3.0),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 270.0,
              //  width: size.width - 50, // set a fixed height for the container
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 231, 231, 231),
                borderRadius: BorderRadius.circular(12),
                //agar shadow deni h box ko toh de skte h
                // boxShadow: const [
                //   BoxShadow(
                //     color: Color(0xff2d3c4e),
                //     spreadRadius: 0,
                //     blurRadius: 3,
                //     offset: Offset(1, 0),
                //   )
                // ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ListTitleFam("Father", "updated"),
                    myDivider(),
                    ListTitleFam("Mother", "updated"),
                    myDivider(),
                    ListTitleFam("Pet", "updated"),
                    myDivider(),
                    ListTitleFam("Sister", "updated"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListTile ListTitleFam(String title, String subTitle) {
    return ListTile(
      leading: Container(
        margin: const EdgeInsets.only(right: 12),
        child: const Icon(
          Icons.male_outlined,
          size: 32,
          color: Color(0xff2d3c4e),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff2d3c4e),
        ),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(color: Colors.grey, fontSize: 14),
      ),
      trailing: Container(
        margin: const EdgeInsets.only(right: 16),
        child: male_icon,
      ),
    );
  }
}
//scrolling recents wala widget

class RecentScrollMenu extends StatelessWidget {
  const RecentScrollMenu({Key? key}) : super(key: key);
  // ignore: constant_identifier_names
  static const share_icon = Icon(
    Icons.arrow_upward_rounded,
    color: Color(0xff2d3c4e),
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        right: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 270.0,
              //  width: size.width - 50, // set a fixed height for the container
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 231, 231, 231),
                borderRadius: BorderRadius.circular(12),
                //agar shadow deni h box ko toh de skte h
                // boxShadow: const [
                //   BoxShadow(
                //     color: Color(0xff2d3c4e),
                //     spreadRadius: 0,
                //     blurRadius: 3,
                //     offset: Offset(1, 0),
                //   )
                // ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    myListTile1('Doc 1', 'upload Date'),
                    myDivider(),
                    myListTile1('Doc 2', 'upload Date'),
                    myDivider(),
                    myListTile1('Doc 3', 'upload Date'),
                    myDivider(),
                    myListTile1('Doc 4', 'upload Date'),
                    myDivider(),
                    myListTile1('Doc 5', 'upload Date'),
                    myDivider(),
                    myListTile1('Doc 6', 'upload Date'),
                    myDivider(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // recents ki ek list tile h ye
  ListTile myListTile1(String title, String subTitle) {
    return ListTile(
      leading: Container(
        margin: const EdgeInsets.only(right: 12),
        child: const Icon(
          Icons.description,
          size: 32,
          color: Color(0xff2d3c4e),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff2d3c4e),
        ),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(color: Colors.grey, fontSize: 14),
      ),
      trailing: Container(
        margin: const EdgeInsets.only(right: 16),
        child: share_icon,
      ),
    );
  }
}

//ye normal divider hai
Divider myDivider() {
  return const Divider(
    color: Color.fromRGBO(255, 255, 255, 0.5),
    height: 10,
    thickness: 2,
    indent: 20,
    endIndent: 20,
  );
}

Divider majorDivider() {
  return const Divider(
    color: Color.fromRGBO(255, 255, 255, 0.5),
    height: 8,
    thickness: 2,
    indent: 16,
    endIndent: 16,
  );
}

class TitleRecents extends StatelessWidget {
  final String text;

  TitleRecents({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
