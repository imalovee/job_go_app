
import 'package:flutter/material.dart';

class PopularJobItem extends StatelessWidget {
  const PopularJobItem({
    super.key, required this.title, required this.iconTitle, required this.image,

  });

  final String title;
  final String iconTitle;
  final Widget image;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8,),
      height: 100,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16,),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(16) ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              image,
              IconButton(
                  onPressed: (){},
                  icon: Image.asset('assets/images/heartbg.png',
                  height: 40,
                  width: 40,))
            ],
          ),

          Text(iconTitle,
              style: TextStyle(
                  color: Colors.black54)),
          SizedBox(height: 16,),
          Text(title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:18,
            ),),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('\$2500/m',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              Text('Toronto, Canada',
                style: TextStyle(
                    color: Colors.black45
                ),)
            ],
          )
        ],
      ),
    );
  }
}
