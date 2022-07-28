import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class FirebaseAnalytic {
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  void addToCartEvent() {
    // Add to cart event

    analytics.logAddToCart(
      currency: "rupee",
      callOptions: AnalyticsCallOptions(global: true),
      items: [
        AnalyticsEventItem(
          itemName: "new item",
          currency: "rupee",
          price: 200,
        ),
      ],
      value: 200,
    );
  }

  void buttonPressEvent({required String buttonName}) {
    analytics.logEvent(
        name: "button_pressed", parameters: {"button_name": buttonName});
  }

  void pageTransitionEvent({required String screenName}) {
    analytics.setCurrentScreen(screenName: screenName);
  }
}
