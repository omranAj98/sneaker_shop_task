import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Scaffold(
            body: Container(
          child: TextField(),
        )));
  }
}
