import 'package:flutter/material.dart';
import 'package:wanza/src/pages/background_page.dart';
import 'package:wanza/src/pages/customers_page.dart';
import 'package:wanza/src/pages/products_page.dart';
import 'package:wanza/src/settings/settings_view.dart';
import 'history_page.dart';
import 'mission_and_vision_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/homePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'WANZA',
          style: TextStyle(
              letterSpacing: 2.0, fontSize: 30, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () =>
                Navigator.pushNamed(context, SettingsView.routeName),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/wanza_logo'),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, MissionAndVision.routeName),
                child: const Text(
                  'Mission & Vision',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, BackgroundPage.routeName),
                child: const Text(
                  'Background of the Company',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, ProductsPage.routeName),
                child: const Text(
                  'Products',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, HistoryPage.routeName),
                child: const Text(
                  'History of the Company',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, CustomersPage.routeName),
                child: const Text(
                  'Customers',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
