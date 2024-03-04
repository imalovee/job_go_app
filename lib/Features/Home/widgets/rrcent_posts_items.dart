
import 'package:flutter/material.dart';

class RecentPostItems extends StatelessWidget {
  const RecentPostItems({
    super.key, required this.leadingIcon, required this.title,
  });
  final Widget leadingIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8,),
      padding: EdgeInsets.all(8,),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16,),
          color: Colors.white
      ),
      child: ListTile(
        leading: leadingIcon,
        title: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),),
        subtitle: Text('Full Time'),
        trailing: Text('\$4500/m',
          style: TextStyle(
              fontSize: 12
          ),),
      ),
    );
  }
}
