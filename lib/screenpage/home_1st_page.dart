import 'package:flutter/material.dart';
import 'package:login_page_design/screenpage/New_Task_Screen.dart';
import 'package:login_page_design/screenpage/progrees_task_Screen.dart';

import '../widgets/tm_appbar.dart';

class Home1stPage extends StatefulWidget {
  const Home1stPage({super.key});

  @override
  State<Home1stPage> createState() => _Home1stPageState();
}

class _Home1stPageState extends State<Home1stPage> {
  int _selectedIndex = 0;

  final List<Widget> _screen = [
    NewTaskScreen(),
    ProgressTaskScreen(),
    NewTaskScreen(),
    NewTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMappbar(

      ),
      body: _screen[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.new_label), label: "New"),
          NavigationDestination(icon: Icon(Icons.refresh), label: "Progress"),
          NavigationDestination(icon: Icon(Icons.cancel), label: "Cancelled"),
          NavigationDestination(icon: Icon(Icons.done), label: "Completed"),
        ],
      ),
    );
  }
  // void _onTapexitbutton() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => LoginPage()),
  //   );
  // }
}

