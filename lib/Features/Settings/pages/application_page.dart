import 'package:flutter/material.dart';

import '../widgets/application_status_item.dart';

class ApplicationPage extends StatelessWidget {
  const ApplicationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text('Applications'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16,),
        children: [
          Text('Your Application',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
          ApplicationStatusItem(
            image: Image.asset('assets/images/fbbg.png',
              height: 40,
              width: 40,
            ),
            text1: 'FaceBook',
            text3: 'Toronto, Canada',
            buttonColor: Colors.indigo.shade50,
            btnTextColor: Colors.indigo,
            lastText: '\$45000 Monthly',
            buttonText: 'Delivered',
            lasttextColor: Colors.indigo,
          ),

          ApplicationStatusItem(
            image: IconButton(
              onPressed: () {  },
              style: IconButton.styleFrom(
                  backgroundColor: Colors.pink.shade50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16,)
                  )
              ),
              icon: Image.asset('assets/images/dribble3.png',
                width:40,
                height: 40,),

            ),
            text1: 'Dribble',
            text2: 'Visual Designer',
            buttonColor: Colors.pink.shade50,
            btnTextColor: Colors.pink,
            buttonText: 'Delivered',
            lasttextColor: Colors.pink,
          ),
          ApplicationStatusItem(
            image: IconButton(
              onPressed: () {  },
              style: IconButton.styleFrom(
                  backgroundColor: Colors.grey.shade50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16,)
                  )
              ),
              icon: Image.asset('assets/images/google_svg.png',
                width:40,
                height: 40,),

            ),
            text1: 'Google',
            buttonColor: Colors.grey.shade50,
            btnTextColor: Colors.blue,
            buttonText: 'Pending',
            lasttextColor: Colors.blue,
          ),
          ApplicationStatusItem(
            image: Image.asset('assets/images/shopify.png',
              width:40,
              height: 40,),
            text1: 'Shopify',
            buttonColor: Colors.green.shade50,
            btnTextColor: Colors.green,
            buttonText: 'Pending',
            lasttextColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
