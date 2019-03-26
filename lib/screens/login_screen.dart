import 'package:flutter/material.dart';
import 'package:simple_chat/screens/info_header.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Widget get loginInfo {
    return InfoHeader(
      icon: Icon(
        Icons.message,
        color: Colors.blue[600],
        size: 100,
      ),
      title: 'Welcome to SimpleChat',
    );
  }

  Widget get content {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Column(
          children: <Widget>[
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder()),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  labelText: 'Password',
                  icon: Icon(Icons.lock),
                  border: OutlineInputBorder()),
              obscureText: true,
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  textColor: Colors.blue,
                  child: Text('Forgot password?'),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              textColor: Colors.blue,
              child: Text('Create account'),
              onPressed: () {
                Navigator.pushNamed(context, '/signUp');
              },
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Login'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: <Widget>[loginInfo, Expanded(child: content,)],
          )),
    ));
  }
}
