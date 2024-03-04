
import 'package:flutter/material.dart';
import 'package:job_go_app/Features/Home/widgets/popular_job_item.dart';

class PopularJobSection extends StatelessWidget {
  const PopularJobSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16,),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Popular Job',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),) ,
              Text('show all',),
            ],
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children:[
                PopularJobItem(
                  image: IconButton(
                    onPressed: () {  },
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.blue.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16,)
                      )
                    ),
                    icon: Image.asset('assets/images/google_svg.png',
                      width:30,
                      height: 30,),

                  ),
                  title: 'Lead Product Manager',
                  iconTitle: 'Google',
                ),
                PopularJobItem(
                  image: Image.asset('assets/images/shopify.png',
                    width: 50,
                    height: 50,),
                  title: 'Senior UI Design lead',
                  iconTitle: 'Shopify',
                ),
              ]
            ),
          )
        ],
      ),
    );
  }
}
