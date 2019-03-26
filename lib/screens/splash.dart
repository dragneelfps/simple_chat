import 'package:flutter/material.dart';

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.message, size: 100, color: Colors.blue),
                Text('Welcome to Simple Chat App', style: Theme.of(context).textTheme.title,),
              ],
            ),
            alignment: AlignmentDirectional.center,
          ),
          Align(
            child: Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: CircularProgressIndicator(),
            ),
            alignment: AlignmentDirectional.bottomCenter,
          ),
        ],
      ),
    );
  }
}