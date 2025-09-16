import 'package:flutter/material.dart';

import '../screenpage/update_Profile_Screen.dart';

class TMappbar extends StatelessWidget implements PreferredSizeWidget {
  const TMappbar({
    super.key, this.updateprofile, required bool automaticallyImplyLeading,
  });
  final bool? updateprofile;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: GestureDetector(
          onTap: () {
            if (updateprofile ?? false) {
              return;
            }
            Navigator.push(context, MaterialPageRoute(builder: (context) =>UpdateProfileScreen()));
          },
          child: Row(
            spacing: 8,
            children: [
              CircleAvatar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2,
                children: [
                  Text(
                    'Raghib Ishraq Rahat',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall?.copyWith(color: Colors.white),
                  ),
                  Text(
                    'ishraq25503@gmail.com',
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [IconButton(onPressed:(){}, icon: Icon(Icons.logout)),]
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

