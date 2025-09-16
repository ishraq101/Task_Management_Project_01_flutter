import 'package:flutter/material.dart';

class TaskcountbyStatuscard extends StatelessWidget {
  const TaskcountbyStatuscard({
    super.key, required this.title, required this.count,
  });
  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:24 ,vertical: 16),
        child: Column(
          children: [
            Text('$count',style: Theme.of(context).textTheme.titleLarge,),
            Text(title,style: TextStyle(color: Colors.grey),),
          ],
        ),
      ),
    );
  }
}
