import 'package:flutter/material.dart';

import '../widgets/popular_job_section.dart';
import '../widgets/recent_posts_section.dart';
import '../widgets/search_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.teal
          ),
            onPressed: (){}, 
            icon: Icon(Icons.more_outlined,
            color: Colors.white,)),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/p11.jpg'),
            radius: 30,
          )
        ],
      ) ,
      body: ListView(
        padding: EdgeInsets.all(16,),
        children: [
          SearchSection(),
          PopularJobSection(),
          RecentPostSection()
        ],
      ),
    );
  }
}
