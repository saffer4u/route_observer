import 'package:flutter/material.dart';

import '../widgets/page_buttons.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Page"),
      ),
      body: const PageButtons(title: "You are on page three"),
    );
  }
}
