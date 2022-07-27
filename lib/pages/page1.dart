import 'package:flutter/material.dart';

import '../widgets/page_buttons.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: const PageButtons(title: "You are on page one"),
    );
  }
}
