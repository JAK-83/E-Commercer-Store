import 'package:e_commerce_store/appData/appData.locator.dart';
import 'package:e_commerce_store/appData/appData.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  await setupLocator();
  runApp(e_commerce_store());
}

class e_commerce_store extends StatelessWidget {
  const e_commerce_store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
