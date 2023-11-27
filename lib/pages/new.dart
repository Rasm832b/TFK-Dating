import 'package:flutter/material.dart';

class NothingToSwipe extends StatelessWidget {
  const NothingToSwipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
        centerTitle: true,
      ),
      body: Center(
          child: Text(
        'Nothing to swipe',
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
