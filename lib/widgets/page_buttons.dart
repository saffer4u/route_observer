import 'package:flutter/material.dart';
import 'package:route_observer/observed_routes.dart';

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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: observedRoutes.length,
                  itemBuilder: (_, index) => Text(observedRoutes[index]),
                ),
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
