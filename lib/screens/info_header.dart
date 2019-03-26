import 'package:flutter/material.dart';

class InfoHeader extends StatelessWidget {

  final Icon icon;
  final String title;

  InfoHeader({@required this.icon, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 16,),
        icon,
        Text(title, style: Theme.of(context).textTheme.title,),
        SizedBox(height: 16,),
      ],
    );
  }
}