import 'package:flutter/material.dart';

import '../widgets/settings_items.dart';
import 'application_page.dart';
import 'notifications_page.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 8,),
        child: ListView(
          padding: EdgeInsets.all(16,),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/p11.jpg'),
                  radius: 60.0,
                ),
                SizedBox(height: 16,),
                Text('Adom Shaffi',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),),
                Text('hello besnik@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                  ),),
                SizedBox(height: 16,),

                SettingsItem(
                  leading: IconButton(
                    onPressed: (){},
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.red
                    ),
                    icon: Icon(Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  title: 'Edit Profile',
                ),
                SettingsItem(
                  leading: IconButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context){
                                return ApplicationPage();
                              })
                      );
                    },
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.red.shade300
                    ),
                    icon: Icon(Icons.access_time_outlined,
                      color: Colors.white,
                    ),
                  ),
                  title: 'Applications',
                ),
                SettingsItem(
                  leading: IconButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                            return NotificationsPage();
                          }));
                    },
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent
                    ),
                    icon: Icon(Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                  title: 'Notifications Settings',
                ),
                SettingsItem(
                  leading: IconButton(
                    onPressed: (){},
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.pink
                    ),
                    icon: Icon(Icons.share,
                      color: Colors.white,
                    ),
                  ),
                  title: 'Share App',
                ),
                SizedBox(height: 30,),
                ListTile(
                  leading: IconButton(
                    onPressed: (){},
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.pink
                    ),
                    icon: Icon(Icons.logout,
                      color: Colors.white,
                    ),
                  ),
                  title: Text('LogOut',
                    style: TextStyle(
                      fontSize:20,

                    ), ),
                )
              ],
            ),

          ],
        ),
      )
    );
  }
}


