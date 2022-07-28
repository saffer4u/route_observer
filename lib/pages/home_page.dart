import 'package:flutter/material.dart';
import 'package:route_observer/analytics/firebase_analytics.dart';
import 'package:route_observer/constents/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  FirebaseAnalytic().addToCartEvent();
                },
                child: const Text("Add to cart event"),
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
            ],
          ),
        ),
      ),
    );
  }
}
