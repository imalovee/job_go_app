import 'package:flutter/material.dart';

class NotificationsItem extends StatelessWidget {
  const NotificationsItem({
    super.key, required this.title,
    required this.subtitle,
    required this.trailing,
  });

  final String title;
  final String subtitle;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8,),
      child: ListTile(
        title: Text(title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),
        subtitle: Text(subtitle,
          style: TextStyle(
              color: Colors.black45
          ),),
        trailing: trailing
        ),
      );

  }
}