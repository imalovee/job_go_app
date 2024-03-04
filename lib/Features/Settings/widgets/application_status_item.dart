
import 'package:flutter/material.dart';

class ApplicationStatusItem extends StatelessWidget {
  const ApplicationStatusItem({
    super.key, required this.image,
    required this.text1,
     this.text2 = 'UI/UX Designer',
     this.text3 = 'New York, USA',
     this.lastText = '\$12000 Monthly',
    required this.buttonText,
    required this.buttonColor,
    required this.btnTextColor,
    required this.lasttextColor,
  });

  final Widget image;
  final String text1;
  final String text2;
  final String text3;
  final String lastText;
  final Color lasttextColor;
  final String buttonText;
  final Color buttonColor;
  final Color btnTextColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16,)
      ),
      padding: EdgeInsets.all(16,),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              image,
              Column(
                children: [
                  Text(text1,
                    style: TextStyle(
                        fontSize: 16
                    ),),
                  Text(text2,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                  Text(text3,
                    style: TextStyle(
                        fontSize: 16
                    ),),
                ],
              ),
              IconButton(
                  onPressed:(){},
                  icon: Icon(Icons.more_vert)),
            ],
          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: (){},
                child: Text(buttonText,
                  style: TextStyle(
                      fontSize: 16),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: btnTextColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8,)
                    )
                ),
              ),
              Text(lastText,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),)
            ],
          )
        ],
      ),
    );
  }
}
