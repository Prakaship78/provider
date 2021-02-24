import 'package:counter/homepage_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
      ),
      body: Consumer<HomepageHelper>(
        builder: (context, value, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  value.getCounter.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.pink),
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  color: Colors.pink,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  onPressed: () {
                    value.incrementCounter();
                  },
                  child: Text(
                    'Up',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  color: Colors.pink,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  onPressed: () {
                    value.decrementCounter();
                  },
                  child: Text(
                    'Down',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  color: Colors.pink,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  onPressed: () {
                    value.reset();
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
