import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PocketPlan Home'),
      ),
      body: Center(
        child: Text('This is the Home Screen'),
      ),
    );
  }
}
