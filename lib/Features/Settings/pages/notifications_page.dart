
import 'package:flutter/material.dart';

import '../widgets/notifications_item.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16,),
        margin: EdgeInsets.symmetric(vertical: 8,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NotificationsItem(
              title: 'New Post',
              subtitle: 'If any new post update',
              trailing:  Switch(
                value: true,
                onChanged: (value){},
                activeColor: Colors.teal,),
            ),
            NotificationsItem(
              title: 'Got Hired',
              subtitle: 'If you get hired by any company',
              trailing:  Switch(
                value: true,
                onChanged: (value){},
                activeColor: Colors.teal,),
            ),
            NotificationsItem(
              title: 'Got Rejected',
              subtitle: 'If you are rejected by any company',
              trailing:  Switch(
                value: true,
                onChanged: (value){},
                //activeColor: Colors.teal,
              ),
            ),
            NotificationsItem(
              title: 'Message',
              subtitle: 'Got any new message',
              trailing:  Switch(
                value: true,
                onChanged: (value){},
               // activeColor: Colors.teal,
              ),
            ),
            NotificationsItem(
              title: 'Call',
              subtitle: 'Have a call',
              trailing:  Switch(
                value: true,
                onChanged: (value){},
                //activeColor: Colors.teal,
              ),
            ),
            NotificationsItem(
              title: 'Dark Mode',
              subtitle: 'Enable dark theme',
              trailing:  Switch(
                value: true,
                onChanged: (value){},
               // activeColor: Colors.teal,
              ),
            ),
          ]
        ),
        ),
    );

  }
}

