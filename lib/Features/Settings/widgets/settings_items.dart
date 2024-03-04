
import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key, required this.leading, required this.title,
  });

  final Widget leading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8,),
      child: ListTile(
        leading: leading,
        title: Text(title,
          style: TextStyle(
            fontSize:20,

          ),),
      ),
    );
  }
}
