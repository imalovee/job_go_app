import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16,),
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 8,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/p11.jpg'),
                  radius: 60,
                ),
                SizedBox(height: 8,),
                Text('Adom Shaffi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),),
                Text('Edit Profile',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black45,
                  ),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name'),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Adom Shaffi",
                    hintStyle: TextStyle(fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8,)
                    )
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 16,),
                Text('Your Email'),
                TextField(
                  decoration: InputDecoration(
                      hintText: "hello besnik@gmail.com",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8,)
                      )
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16,),
                Text('Password'),
                TextField(
                  decoration: InputDecoration(
                      hintText: "...........",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8,)
                      )
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 26,),
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Save Now'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16,),
                    ),
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 55),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
