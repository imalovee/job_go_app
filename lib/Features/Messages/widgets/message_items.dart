
import 'package:flutter/material.dart';

class MessageItems extends StatelessWidget {
  const MessageItems({
    super.key, required this.title,
    required this.subtitle,
    required this.image,
    this.trailing = const Text(''),
  });
  final String title;
  final String subtitle;
  final Widget image;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8,),
      //color: Colors.white,
      child: ListTile(
          leading: image,
          title: Text(title,
            style: TextStyle(
              fontSize: 16,
                fontWeight: FontWeight.bold
            ),),
          subtitle: Text(subtitle,
          style: TextStyle(
            fontSize: 16
          ),),
          trailing: trailing,
      ),
    );
  }
}
