import 'package:flutter/material.dart';

import '../widgets/page_buttons.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
    body: const PageButtons(title: "You are on page two"),
    );
  }
}
