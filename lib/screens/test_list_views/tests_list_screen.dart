import 'package:flutter/material.dart';

import 'body.dart';

class TestsLists extends StatefulWidget {
  const TestsLists({Key? key}) : super(key: key);
  static String routname = '\Books_Screen';

  @override
  State<TestsLists> createState() => _TestsListsState();
}

class _TestsListsState extends State<TestsLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(
            Icons.abc,
            size: 0,
          ),
          title: Text(
            'قائمة التحاليل المخبرية',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),
          centerTitle: true),
      body: Books(),
    );
  }
}
