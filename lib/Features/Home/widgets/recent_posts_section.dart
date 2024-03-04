
import 'package:flutter/material.dart';
import 'package:job_go_app/Features/Home/widgets/rrcent_posts_items.dart';

class RecentPostSection extends StatelessWidget {
  const RecentPostSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Posts',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),) ,
                Text('show all',),
              ]),
            RecentPostItems(
              leadingIcon: Image.asset('assets/images/fbbg.png',
              height: 50,
              width: 50,),
              title: 'UI/UX Designer',
            ),
          RecentPostItems(
              leadingIcon: Image.asset('assets/images/shopify.png',
                height: 50,
                width: 50,),
              title: 'Product Designer'),
          RecentPostItems(
              leadingIcon:Image.asset('assets/images/netflix.png',
                height: 50,
                width: 50,) ,
              title: 'Visual Designer')
        ],
      ),
    );
  }
}
