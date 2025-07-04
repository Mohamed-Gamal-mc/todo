import 'package:flutter/material.dart';
import 'package:todo/tabs/settings/settings_tab.dart';
import 'package:todo/tabs/tasks/tasks_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    TasksTab(),
    SettingsTab(),
  ];
  int currntIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      body: tabs[currntIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        // padding:  EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
            currentIndex: currntIndex,
            onTap: (Index) {
              currntIndex = Index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  label: 'lists',
                  icon: Icon(
                    Icons.list,
                    size: 30,
                  )),
              BottomNavigationBarItem(
                  label: 'settings',
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  )),
            ]),
      ),
    );
  }
}
