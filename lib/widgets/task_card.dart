import 'package:flutter/material.dart';


class TaskCard extends StatelessWidget {
  final String chipText;
  final Color chipColor;
  final Color chipTextColor;
  const TaskCard({
    super.key, required this.chipText, required this.chipColor, required this.chipTextColor,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      tileColor: Colors.white,
      title: Text('Title is here'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 7,
        children: [
          Text('Something will be here'),
          Text('Date:21/12/21',style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),),
          Row(
            children: [
              Chip(label: Text(chipText),
                backgroundColor: chipColor,
                labelStyle: TextStyle(color: chipTextColor),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.edit,color: Colors.grey,)),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete,color: Colors.grey,)),
            ],
          )
        ],
      ),
    );
  }
}
