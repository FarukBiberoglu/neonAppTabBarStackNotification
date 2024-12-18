import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomTabBarScreen(),
    );
  }
}

class CustomTabBarScreen extends StatefulWidget {
  @override
  _CustomTabBarScreenState createState() => _CustomTabBarScreenState();
}

class _CustomTabBarScreenState extends State<CustomTabBarScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hulk\'s TabBar Challenge'),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                icon: Icon(Icons.home, color: _tabController.index == 0 ? Colors.green : Colors.grey),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.search, color: _tabController.index == 1 ? Colors.green : Colors.grey),
                text: 'Search',
              ),
              Tab(
                icon: Icon(Icons.notifications, color: _tabController.index == 2 ? Colors.green : Colors.grey),
                text: 'Notifications',
              ),
              Tab(
                icon: Icon(Icons.settings, color: _tabController.index == 3 ? Colors.green : Colors.grey),
                text: 'Settings',
              ),
            ],
            onTap: (index) {
              setState(() {});
            },
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(child: Text('Home Content')),
                Center(child: Text('Search Content')),
                Center(child: Text('Notifications Content')),
                Center(child: Text('Settings Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
