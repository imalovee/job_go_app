
import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(16,),
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16,),
              color: Colors.white,
              //border: Border.all(color: Colors.grey),
            ),
            child: Text('Search Here',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),),
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(16,),
            ),
            child: Icon(Icons.settings,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
