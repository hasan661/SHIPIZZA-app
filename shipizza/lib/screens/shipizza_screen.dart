import 'package:flutter/material.dart';
import 'package:shipizza/screens/menu_screen.dart';
import 'dart:async';

class ShipizzaScreen extends StatefulWidget {
  @override
  _ShipizzaScreenState createState() => _ShipizzaScreenState();
}

class _ShipizzaScreenState extends State<ShipizzaScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: initScreen(context),
      );
    
  }
  startTime() async {
    const duration =const Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Navigator.of(context).pushReplacementNamed(MenuScreen.routeName);
  }

  initScreen(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/Logo.png",
                    height: 500,
                    width: 500,
                  )),
            ),
            CircularProgressIndicator(
              backgroundColor: const Color.fromRGBO(135, 68, 39, 1),
              color: Theme.of(context).canvasColor,
              strokeWidth: 3,
            )
          ],
        ),
      ),
    );
  }
}
