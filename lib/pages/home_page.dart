import 'package:flutter/material.dart';
import 'package:route_observer/constents/routes.dart';

import '../observed_routes.dart';

class HomePage extends StatelessWidget{
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
