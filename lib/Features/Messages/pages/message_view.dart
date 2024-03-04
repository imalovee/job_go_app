import 'package:flutter/material.dart';

import '../widgets/message_items.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Message',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){}, 
              icon:Icon(Icons.search))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(8,),
        children: [
          Column(
            children: [
              MessageItems(
                image: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/p11.jpg'),
                ),
                title: 'Rozzane Barrientees',
                subtitle: "A wonderful serenity",
                trailing:  Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    shape: BoxShape.circle,

                  ),
                  child: Text('2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                ),
              ),
              MessageItems(
                image: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/pi1.jpg'),
                ),
                title: 'Anaya Sanji',
                subtitle: 'What about paypal?',
                trailing:  Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    shape: BoxShape.circle,

                  ),
                  child: Text('1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                ),
              ),
              MessageItems(
                image: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/pi8.jpg'),
                ),
                title: 'Elizabeth Olsen',
                subtitle: 'We should move forward to talk with..',
              ),
              MessageItems(
                image: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/pi6.jpg'),
                ),
                title: 'Tony Stark',
                subtitle: 'Lets have a call for future..',
              ),
              MessageItems(
                image: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/pi5.jpg'),
                ),
                title: 'Steave',
                subtitle: 'Move in some special work recently..',
              ),
              MessageItems(
                image: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/p11.jpg'),
                ),
                title: 'Thor',
                subtitle: 'You should be an avenger i think..',
              ),
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    shape: BoxShape.circle,

                  ),
                  child: Text('N',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),),
                ),
                title: Text('Natasha',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),),
                subtitle: Text('Im going to win the avangers end game'),
              ),
              ListTile(
                leading: Container(
                  height:40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade200,
                    shape: BoxShape.circle,

                  ),
                  child: Text('H',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),),
                ),
                title: Text('Hak Eye',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),),
                subtitle: Text('I have to save Natasha in avengers endgame'),
              )
            ],
          )
        ],
      ),
    );
  }
}
