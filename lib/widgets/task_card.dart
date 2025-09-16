import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
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
              Chip(label: Text('New'),backgroundColor: Colors.blue,
                labelStyle: TextStyle(color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)
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
