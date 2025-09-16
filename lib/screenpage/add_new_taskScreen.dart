import 'package:flutter/material.dart';
import 'package:login_page_design/widgets/Screenbackground.dart';
import 'package:login_page_design/widgets/tm_appbar.dart';

import 'New_Task_Screen.dart';

class AddNewTaskscreen extends StatefulWidget {
  const AddNewTaskscreen({super.key});

  @override
  State<AddNewTaskscreen> createState() => _AddNewTaskscreenState();
}

class _AddNewTaskscreenState extends State<AddNewTaskscreen> {

  final TextEditingController _titleediting = TextEditingController();
  final TextEditingController _descriptionediting = TextEditingController();
  final GlobalKey <FormState> _formkey = GlobalKey <FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMappbar(),
      body: Screenbackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    'Add New Task',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _titleediting,
                    decoration: InputDecoration(
                      hintText: 'Task Name',
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _descriptionediting,
                    maxLines: 6,
                    decoration: InputDecoration(
                      hintText: 'Description',
                    ),
                  ),
                  const SizedBox(height: 8),
                  FilledButton(
                    onPressed: _onTapAddnbutton,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [Icon(Icons.add), Text('Add')],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _titleediting.dispose();
    _descriptionediting.dispose();
    super.dispose();
  }
  void _onTapAddnbutton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewTaskScreen()),
    );
  }
}
