import 'package:flutter/material.dart';

class Office extends StatelessWidget {
  const Office({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "المكاتب",
          style: TextStyle(fontFamily: "Mirza", fontSize: 30),
        ),
      ),
    );
  }
}