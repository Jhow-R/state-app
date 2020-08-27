import 'package:flutter/material.dart';
import 'package:state_app/views/view_two.dart';

class ViewOne extends StatefulWidget {
  @override
  _ViewOneState createState() {
    print('ViewOne - 1 - createState');
    return _ViewOneState();
  }
}

class _ViewOneState extends State<ViewOne> {
  @override
  void initState() {
    super.initState();
    print('ViewOne - 2 - initState');
  }

  @override
  Widget build(BuildContext context) {
    print('ViewOne - 3 - build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Life Cycle - View 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '1',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            RaisedButton(
              child: Text("Reload"),
              onPressed: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (BuildContext ctx) => ViewTwo()),
          );
        },
        child: Icon(Icons.close),
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    print('ViewOne - 4 - deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('ViewOne - 5 - dispose');
  }
}
