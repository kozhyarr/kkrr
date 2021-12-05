import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: demo(),
  ));
}

class demo extends StatefulWidget {
  @override
  _demoState createState() => _demoState();
}

class _demoState extends State<demo> {
  double _count = 88;
  double min = 43855048;
  double max = 127300000;
  double get size => _count;
  void set size(value) => setState((_count = value));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Icon(Icons.alarm,
        size: 500,
        color: Colors.blue,) 
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton.extended(
              onPressed: () => {},
              label: Text("78"),
              backgroundColor: Colors.red),
          FloatingActionButton.extended(
              onPressed: () => {},
              label: Text("275"),
              backgroundColor: Colors.green),
          FloatingActionButton.extended(
              onPressed: () => {},
              label: Text("383"),
              backgroundColor: Colors.red)
        ],
      ),
      
     
      bottomSheet: SizedBox(
        height: 100,
        child: Slider(
          value: size,
          min: 20,
          max: 100,
          onChanged: (double value) => size = value,
        ),
        
      ),bottomNavigationBar: SizedBox(
        height: 100,
        child: Slider(
          value: size,
          min: 10,
          max: 100,
          onChanged: (double value) => size = value ),
      ), 
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("My Icon"),
        flexibleSpace: SafeArea(
            child: Container(
          color: Colors.brown,
        )),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.circle),
            onPressed: () => {},
          ),
           IconButton(
            icon: Icon(Icons.emoji_emotions),
            onPressed: () => {},
          ),
           IconButton(
            icon: Icon(Icons.square_foot),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => {},
          ),
          IconButton(
           icon: Icon(Icons.add),
            onPressed: () => {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(color: Colors.teal),
            ),
            ListTile(
              leading: Icon(Icons.check_box),
              title: Text('Allow Resize'),
            ),
            ListTile(
              leading: Icon(Icons.check_box),
              title: Text('Allow Chage Primer Color'),
            ),
          ],
        ),
      ),
    );
  }
}