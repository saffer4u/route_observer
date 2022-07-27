import 'package:flutter/material.dart';
import 'package:route_observer/constents/routes.dart';
import 'package:route_observer/pages/page1.dart';
import 'package:route_observer/pages/page2.dart';
import 'package:route_observer/pages/page3.dart';

import 'my_route_observer.dart';
import 'pages/home_page.dart';

void main() => runApp(const MyApp());

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      theme: ThemeData(),
      initialRoute: Routes.home,
      navigatorObservers: [
      MyRouteObserver()
      ],
      routes: {
        Routes.home: (_) => const HomePage(),
        Routes.page1: (_) => const Page1(),
        Routes.page2: (_) => const Page2(),
        Routes.page3: (_) => const Page3(),
      },
    );
  }
}

