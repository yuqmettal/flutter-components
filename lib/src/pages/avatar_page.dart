import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  static final pageName = 'avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pinimg.com/originals/d3/72/4d/d3724dd8a0cc101e5faed272c1ad19c9.png'),
              radius: 25,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/fade.gif'),
          image: NetworkImage('https://venezuelaaldia.com/wp-content/uploads/2019/12/pocoy%C3%B3a.jpeg'),
        ),
      ),
    );
  }
}