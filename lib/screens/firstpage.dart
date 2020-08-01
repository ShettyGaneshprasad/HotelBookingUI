import 'package:flutter/material.dart';
import 'package:hotelapp/screens/login.dart';
import 'package:hotelapp/screens/register.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            child: Stack(
              children: <Widget>[
                Image.asset("assets/background.jpg"),
              ],
            ),
          ),
          SizedBox(
            height: 75,
          ),
          Text(
            "Plan Your Trips",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "book one of our unique hotel to escape the ordinary",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Material(
              elevation: 5.0,
              color: Color(0xff4FBE9F),
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                minWidth: 200.0,
                height: 42.0,
                child: Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Material(
              elevation: 5.0,
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                minWidth: 200.0,
                height: 42.0,
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
