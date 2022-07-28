import 'package:flutter/material.dart';
import 'package:route_observer/analytics/firebase_analytics.dart';

import '../constents/routes.dart';

class PageButtons extends StatelessWidget {
  final String title;
  const PageButtons({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(title),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .popUntil(ModalRoute.withName(Routes.home));
              },
              child: const Text("Home"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.page1);
              },
              child: const Text("Page 1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.page2);
              },
              child: const Text("Page 2"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.page3);
              },
              child: const Text("Page 3"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.page3);
              },
              child: const Text("Push Replacement with Page 3"),
            ),
            ElevatedButton(
              onPressed: () {
                FirebaseAnalytic()
                    .buttonPressEvent(buttonName: "Button pressed Event");
              },
              child: const Text("Button press event"),
            ),
          ],
        ),
      ),
    );
  }
}
