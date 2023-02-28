import 'package:flutter/material.dart';

class LockerPage extends StatefulWidget {
  const LockerPage({Key? key}) : super(key: key);

  @override
  _LockerPageState createState() => _LockerPageState();
}

class _LockerPageState extends State<LockerPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Create two lists to store the bookmarked files and locker files respectively
  List<ListTile> _bookmarkedFiles = [
    myListTileBookmarks('Document 1', 'updated'),
    myListTileBookmarks('Document 2', 'updated'),
  ];
  List<String> _lockerFiles = ['locker_file_1', 'locker_file_2'];

  @override
  void initState() {
    super.initState();
    // Initialize TabController
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            indicator: BoxDecoration(
              //borderRadius: BorderRadius.circular(50),
              color: const Color(0xff2d3c4e),
            ),
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color.fromARGB(255, 255, 0, 0),
            labelColor: Color.fromARGB(255, 255, 255, 255),
            controller: _tabController,
            tabs: [
              Tab(
                text: 'Bookmarks',
              ),
              Tab(
                text: 'Locker',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Display the bookmarked files list when the user clicks on the "Bookmarks" button
                ListView.builder(
                  itemCount: _bookmarkedFiles.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _bookmarkedFiles[index];
                  },
                ),
                // Display the locker files list when the user clicks on the "Locker" button
                ListView.builder(
                  itemCount: _lockerFiles.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(_lockerFiles[index]),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static ListTile myListTileBookmarks(String title, String subTitle) {
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
        child: Icon(Icons.bookmark),
      ),
    );
  }
}
