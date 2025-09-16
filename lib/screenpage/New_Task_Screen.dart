import 'package:flutter/material.dart';

import '../widgets/task_card.dart';
import '../widgets/task_countbystatus_card.dart';
import 'add_new_taskScreen.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 16),
            SizedBox(
              height: 100,
              child: ListView.separated(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return TaskcountbyStatuscard(title: 'New', count: 00);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 5);
                },
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return TaskCard();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 5);
              },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapNewbutton,
        child: Icon(Icons.add),
      ),
    );
  }
  void _onTapNewbutton() {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddNewTaskscreen()),
      );
    }
}

