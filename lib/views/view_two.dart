import 'package:flutter/material.dart';
import 'package:state_app/views/view_one.dart';

class ViewTwo extends StatefulWidget {
  @override
  _ViewTwoState createState() => _ViewTwoState();
}

class _ViewTwoState extends State<ViewTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Life Cycle - View 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '2',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (BuildContext ctx) => ViewOne()),
          );
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
