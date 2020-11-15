import 'package:flutter/material.dart';

class BasicNavigation1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Second Page'),
          onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => BasicNavigation2()));

            Navigator.pushNamed(context, '/2');
          },
        ),
      ),
    );
  }
}

class BasicNavigation2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Main Page'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
